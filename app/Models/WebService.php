<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class WebService extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'web_services';

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($question) {
            $question->slug = Str::slug($question->title);
        });
    }
    protected $fillable = [
        'title',
        'slug',
        'subtitle',
        'pic_icon',
        'pic_main',
        'body',
        'active'

    ];
}
