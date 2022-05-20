<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryProductController extends Controller
{
    /**
     * Get product with category
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, Category $category)
    {
        $type = $request->input('type', 'id');
        $order = $request->input('order', 'desc');
        return [
            'products' => $category->products()->isDisplayed()->orderBy($type, $order)->simplePaginate(9),
            'category' => $category,
        ];
    }
}
