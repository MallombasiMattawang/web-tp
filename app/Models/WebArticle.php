<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class WebArticle extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'web_articles';

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($question) {
            $question->slug = Str::slug($question->title);
        });
    }

    public function getPicAllAttribute($pic_all)
    {
        if (is_string($pic_all)) {
            return json_decode($pic_all, true);
        }

        return $pic_all;
    }

    public function setPicAllAttribute($pic_all)
    {
        if (is_array($pic_all)) {
            $this->attributes['pic_all'] = json_encode($pic_all);
        }
    }

    protected $fillable = [
        'title',
        'slug',
        'subtitle',
        'category_id',
        'pic_main',
        'pic_all',
        'body',
        'publish_date',
        'active'

    ];

    public function articleCategory()
    {
        return $this->hasOne(WebArticleCategory::class, 'id', 'category_id');
    }
}
