<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Banner;

class BannerController extends Controller
{
    /**
     * Lấy tất cả bản ghi trong bảng banners
     *
     * @return \Illuminate\Http\Response
     */
    public static function index()
    {
        return Banner::where('display', '=', 1)->limit(3)->get();
    }
}
