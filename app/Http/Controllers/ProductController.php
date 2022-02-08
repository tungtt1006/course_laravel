<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    /**
     * Get category
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if (isset($request->exceptId)) {
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

    /**
     * Get highlight course list
     *
     *
     */
    public static function getHighlightCourse()
    {
        return Product::where('display', '=', 1)
            ->limit(4)
            ->get();
    }

    /**
     * Get newest course list
     *
     *
     */
    public static function getNewestCourse()
    {
        return Product::where('display', '=', 1)
            ->orderBy('created_at', 'desc')
            ->limit(4)
            ->get();
    }
}
