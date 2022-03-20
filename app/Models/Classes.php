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
        'time_in',
        'time_out',
        'days_of_week',
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

    public function periods()
    {
        return $this->hasMany('App\Models\Period', 'class_id');
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

    public static function isArrange($productId)
    {
        return self::where('status', 'arrange')->where('product_id', $productId)->count() != 0;
    }

    public static function isUpdate($class)
    {
        return self::where('status', 'arrange')->where('product_id', $class->product_id)->count() == 1;
    }

    public static function calculateNumber($productId)
    {
        return (self::where('product_id', $productId)->count() + 1);
    }
}
