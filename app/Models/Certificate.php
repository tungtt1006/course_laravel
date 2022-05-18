<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Certificate extends Model
{
    public function getPhotoAttribute()
    {
        return env('WEB_HOST_NAME') . $this->attributes['photo'];
    }
}
