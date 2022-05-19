<?php

namespace App\Http\Controllers\client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $categories = [];
        if ($request->filled('except')) {
            $categories = Category::where('id', '!=', $request->except)->orderBy('id', 'desc')->limit(3)->get();
        } else {
            $categories = Category::orderBy('id', 'desc')->get();
        }
        return ['categories' => $categories];
    }
}
