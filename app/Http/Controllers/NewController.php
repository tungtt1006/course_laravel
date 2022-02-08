<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\News;

class NewController extends Controller
{
    /**
     * Lấy danh sách các tin tức hiển thị trên homepage
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $pageSize = isset($request->pagesize) ? $request->pagesize : 4;
        $data = News::select('id', 'name', 'description', 'created_at', 'photo')
                        ->where('display', '=', 1)
                        ->orderBy('created_at', 'desc')
                        ->limit($pageSize)
                        ->get();
        return $data;
    }

    /**
     * Get highlight news
     *
     * @return Collection
     */
    public static function getHighlightNews()
    {
        return News::select('id', 'name', 'description', 'created_at', 'photo')
            ->where('display', '=', 1)
            ->orderBy('created_at', 'desc')
            ->limit(4)
            ->get();
    }
}
