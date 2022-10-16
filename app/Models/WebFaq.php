<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WebFaq extends Model
{
    use HasFactory;
    protected $table = 'web_faqs';

    protected $fillable = [
        'question',
        'answer',
        'file_support',
        'active'
    ];
}
