<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WebClient extends Model
{
    use HasFactory;

    protected $table = 'web_clients';

    protected $fillable = [
        'title',
        'subtitle',
        'pic_main',
        'active'

    ];
}
