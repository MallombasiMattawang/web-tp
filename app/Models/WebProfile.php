<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WebProfile extends Model
{
    use HasFactory;
    protected $table = 'web_profiles';

    protected $fillable = [
        'website_name',
        'website_url',
        'website_description',
        'website_logo_header',
        'website_logo_footer',
        'website_email',
        'website_phone',
        'website_fax',
        'website_address',
        'website_fb',
        'website_ig',
        'website_twitter',
        'website_wa',
        'website_author',
        'website_owner',
        'about_us',
        'history',
        'visi_misi',
        'service',
        'product',


    ];
}
