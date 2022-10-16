<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class WebPortfolio extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'web_portfolios';

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
        'pic_main',
        'pic_all',
        'body',
        'client',
        'location',
        'finish_date',
        'lat_x',
        'long_y',
        'active'

    ];


    public function tags()
    {
        return $this->belongsToMany(WebTag::class);
    }
}
