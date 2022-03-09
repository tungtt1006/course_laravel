<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Banner;
use App\Models\Product;
use App\Models\News;

class HomeController extends Controller
{
    public function index()
    {
        $banners = Banner::all();
        $highlightCourses = Product::highlightCourse();
        $newestCourses = Product::newestCourse();
        $highlightNews = News::highlightNews();

        return view('client.Home', [
            'banners' => $banners,
            'highlightCourses' => $highlightCourses,
            'newestCourses' => $newestCourses,
            'highlightNews' => $highlightNews
        ]);
    }
}
