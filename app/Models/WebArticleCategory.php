<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class WebArticleCategory extends Model
{
    use HasFactory;
    protected $table = 'web_article_categories';

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
    ];

    
}
