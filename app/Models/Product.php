<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'certificate_id',
        'description',
        'content',
        'display',
        'hot',
        'time_start',
        'time_end',
        'day_start',
        'day_end',
        'sessions',
        'price',
    ];

    public function scopeHighlightProducts($query)
    {
        return $query->where('hot', 1);
    }

    public function scopeNewestProducts($query)
    {
        return $query->orderBy('created_at', 'desc');
    }

    public function scopeDisplayed($query)
    {
        return $query->where('display', 1);
    }
}
