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
        'price',
        'photo',
        'discount',
        'stripe_product_id',
        'stripe_price_id',
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

    public function certificate()
    {
        return $this->belongsTo('App\Models\Certificate');
    }

    public function scopeHighlightProducts($query)
    {
        return $query->where('hot', 1)->isDisplayed();
    }

    public function scopeNewestProducts($query)
    {
        return $query->orderBy('created_at', 'desc')->isDisplayed();
    }

    public function scopeIsDisplayed($query)
    {
        return $query->where('display', 1);
    }
}
