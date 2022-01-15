<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    /**
     * Lấy danh sách danh mục 
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if(isset($request->exceptId)) {
            $x = $request->exceptId;
        } else {
            $x = '';
        }
        $data = Category::select('id', 'name')
                        ->where('display', '=', 1)
                        ->where('id', '!=', $x)
                        ->get();
        return $data;
    }
}
