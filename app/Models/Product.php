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
        'sessions',
        'price',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = ['photo_url'];

    public function getPhotoUrlAttribute()
    {
        return env('WEB_HOST_NAME') . $this->attributes['photo'];
    }

    public function classes()
    {
        return $this->hasMany('App\Models\Classes');
    }

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
