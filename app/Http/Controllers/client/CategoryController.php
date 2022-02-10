<?php

namespace App\Http\Controllers\client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    /**
     * Display the specified resource.
     * @param  Request $reuqest
     *
     * @return \Illuminate\Http\Response
     */
    public function getCategoryWId(Request $request)
    {
        $categoryId = $request->category;
        $products = Category::find($categoryId)->products($request->order, $request->type)->paginate(5);
        $category = Category::find($categoryId);
        $anotherCategory = Category::where('id', '!=', $categoryId)->limit(3)->get();
        return view('client.DetailCategory', [
            'products' => $products,
            'category' => $category ,
            'anotherCategory' => $anotherCategory
        ]);
    }
}
