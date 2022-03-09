<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table = "news";

    public function scopeHighlightNews($query)
    {
        return $query->orderBy('created_at', 'desc')->paginate(4);
    }

    public function scropeDisplayed($query)
    {
        return $query->where('display', 1);
    }
}
