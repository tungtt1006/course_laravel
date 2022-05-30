<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Category;
use App\Models\Certificate;
use App\Http\Requests\ProductRequest;
use Illuminate\Support\Facades\Storage;
use App\Services\StripeService;
use App\Traits\ProductHelper;

class ProductController extends Controller
{
    use ProductHelper;

    /**
     * Get category
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Category $category)
    {
        $products = $category->products;
        return view('admin.product.product-read', [
            'category' => $category,
            'data' => $products,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Category $category)
    {
        $certificates = Certificate::all();
        return view('admin.product.product-create-update', [
            'certificates' => $certificates,
            'category' => $category,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request, Category $category)
    {
        $request->validate(['photo' => 'required|image']);

        $photoName = time() . '_' . str_replace(' ', '', $request->name) . '.' . $request->photo->extension();
        $product = $category->products()->make([
            'name' => $request->name,
            'certificate_id' => $request->certificateid,
            'description' => $request->description,
            'content' => $request->content,
            'display' => $request->display,
            'hot' => $request->hot,
            'price' => $request->price,
            'photo' => '/storage/img/products/' . $photoName,
            'discount' => $request->discount,
        ]);
        $stripe = new StripeService;
        $productInfo = $stripe->createProduct($product);
        $product->stripe_product_id = $productInfo['stripe_product_id'];
        $product->stripe_price_id = $productInfo['stripe_price_id'];
        $result = $category->products()->create($product->toArray());

        if ($result) {
            $request->photo->storeAs('img/products', $photoName, 'public');
            return redirect()->route('categories.products.index', $category->id);
        }
        return redirect()->route('403');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category, Product $product)
    {
        $certificates = Certificate::all();
        return view('admin.product.product-create-update', [
            'certificates' => $certificates,
            'category' => $category,
            'data' => $product,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, Category $category, Product $product)
    {
        $arr = [
            'name' => $request->name,
            'certificate_id' => $request->certificateid,
            'description' => $request->description,
            'content' => $request->content,
            'display' => $request->display,
            'hot' => $request->hot,
            'price' => $request->price,
            'discount' => $request->discount,
        ];

        if ($request->hasFile('photo')) {
            $nameImg = substr($product->photo, 9);
            $photoName = time() . '_' . str_replace(' ', '', $request->name) . '.' . $request->photo->extension();
            $arr['photo'] = '/storage/img/products/' . $photoName;
        }

        if ($product->discount != (int) $request->discount
            || $product->price != (int) $request->price
        ) {
            $newPrice = $this->calcPrice($request->price, $request->discount);
            $stripe = new StripeService;
            $productPrice = $stripe->createPrice($product->stripe_product_id, $newPrice);
            $arr['stripe_price_id'] = $productPrice->id;
        }

        $rowUpdated = $product->update($arr);
        if (!$rowUpdated) {
            return redirect()->back()->withInput();
        }

        if ($request->hasFile('photo') && Storage::disk('public')->exists($nameImg)) {
            Storage::disk('public')->delete($nameImg);
            $request->photo->storeAs('img/products', $photoName, 'public');
        }
        return redirect()->route('categories.products.index', $category->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category, Product $product)
    {
        if ($product->delete()) {
            return redirect()->route('categories.products.index', $category->id);
        }
        return redirect()->route("403");
    }
}
