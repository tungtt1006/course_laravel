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
        'product_id',
        'teacher_id',
        'sessions',
        'start_day',
        'end_day',
        'time_in',
        'time_out',
        'days_of_week',
        'number',
        'status'
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    protected $appends = ['class_name'];

    public function getClassNameAttribute()
    {
        return $this->product->name . '-' . $this->number;
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function teacher()
    {
        return $this->belongsTo(Teacher::class);
    }

    public function periods()
    {
        return $this->hasMany('App\Models\Period', 'class_id');
    }

    public function orders()
    {
        return $this->hasMany('App\Models\Order', 'class_id');
    }

    public function users()
    {
        return $this->belongsToMany('App\Models\User', 'orders', 'class_id', 'user_id');
    }

    public function scopeWithClasses($query)
    {
        return $query->with(['product', 'teacher']);
    }

    public function scopeLearningClass($query)
    {
        return $query->where('start_day', '<=', now())->where('end_day', '>=', now());
    }

    public function scopeOfStatus($query, $status)
    {
        return $query->where('status', $status)->withClasses();
    }

    public static function calculateNumber($productId)
    {
        return (self::where('product_id', $productId)->count() + 1);
    }
}
