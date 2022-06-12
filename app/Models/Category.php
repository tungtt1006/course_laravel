<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use SoftDeletes;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'description',
        'display'
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    protected $appends = ['photoUrl'];

    public function getPhotoUrlAttribute()
    {
        return config('app.url') . $this->attributes['photo'];
    }

    /**
     * Get the course for a category
     */
    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }
}
