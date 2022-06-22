<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Teacher extends Model
{
    use SoftDeletes;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'product_id',
        'description',
        'photo'
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    protected $appends = ['photo_url'];

    public function getPhotoUrlAttribute()
    {
        return env('WEB_HOST_NAME') . $this->attributes['photo'];
    }

    public function product()
    {
        return $this->belongsTo('App\Models\Product');
    }
}
