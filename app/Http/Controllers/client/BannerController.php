<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Banner;

class BannerController extends Controller
{
    /**
     * Get 3 records banners
     *
     * @return \Illuminate\Http\Response
     */
    public static function index()
    {
        $banners = Banner::where('display', '=', 1)->limit(3)->get();
        foreach ($banners as $banner) {
            $banner->photo = env('WEB_HOST_NAME').'/storage/img/banners/'.$banner->photo;
        }
        return $banners;
    }
}
