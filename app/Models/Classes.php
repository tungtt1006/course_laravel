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
        'name',
        'products_id',
        'start_day',
        'sessions',
        'teachers_id',
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    /**
     * Get the post that owns the comment.
     */
    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    /**
     * Get the post that owns the comment.
     */
    public function teacher()
    {
        return $this->belongsTo(Teacher::class);
    }

    /**
     * Users that belong to the class.
     */
    public function users()
    {
        return $this->belongsToMany('App\Models\User', 'orders', 'class_id', 'user_id');
    }

    public function scopeWithClasses($query)
    {
        return $query->with(['product', 'teacher']);
    }

    public function scopeArrangeClasses($query)
    {
        return $query->where('status', 'arrange')->withClasses();
    }

    public function scopeLearningClasses($query)
    {
        return $query->where('status', 'learning')->withClasses();
    }

    public function scopeFinishClasses($query)
    {
        return $query->where('status', 'finish')->withClasses();
    }
}
