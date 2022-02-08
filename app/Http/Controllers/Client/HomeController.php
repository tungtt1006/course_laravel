<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\BannerController as Banner;
use App\Http\Controllers\ProductController as Product;
use App\Http\Controllers\NewController as Newss;

class HomeController extends Controller
{
    public function index()
    {
        $banners = Banner::index();
        $highlightCourses = Product::getHighlightCourse();
        $newestCourses = Product::getNewestCourse();
        $highlightNews = Newss::getHighlightNews();

        return view('client.Home', [
            'banners' => $banners,
            'highlightCourses' => $highlightCourses,
            'newestCourses' => $newestCourses,
            'highlightNews' => $highlightNews
        ]);
    }
}
