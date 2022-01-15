<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
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
        $pagesize = isset($request->pagesize) ? $request->pagesize : 5;
        $type = isset($request->type) ? $request->type : 'all';
        
        switch ($type) {
            case 'hightlight':
                $data = Product::where('display', '=', 1)
                        ->limit($pagesize)
                        ->get();
                break;
            case 'newest':
                $data = Product::where('display', '=', 1)
                        ->orderBy('created_at', 'desc')
                        ->limit($pagesize)
                        ->get();
                break;
            default:
                $data = [];
                break;
        }
        return $data;
    }
}
