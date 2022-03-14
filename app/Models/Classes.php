<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Classes extends Model
{
    use SoftDeletes;

    protected $table = "classes";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'products_id',
        'start_day',
        'sessions',
        'teachers_id',
        'number',
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    public function getName()
    {
        return $this->product->name.'-'.$this->number;
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function teacher()
    {
        return $this->belongsTo(Teacher::class);
    }

    public function users()
    {
        return $this->belongsToMany('App\Models\User', 'orders', 'class_id', 'user_id');
    }

    public function scopeWithClasses($query)
    {
        return $query->with(['product', 'teacher']);
    }

    public function scopeOfStatus($query, $status)
    {
        return $query->where('status', $status)->withClasses();
    }
}
