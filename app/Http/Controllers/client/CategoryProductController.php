<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Category;

class CategoryProductController extends Controller
{
    /**
     * Get product with category
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Category $category)
    {
        return [
            'products' => $category->products,
            'category' => $category
        ];
    }
}
