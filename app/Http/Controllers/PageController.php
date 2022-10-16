<?php

namespace App\Http\Controllers;

use App\Models\WebClient;
use App\Models\WebFaq;
use App\Models\WebPortfolio;
use App\Models\WebService;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function index()
    {
        $services       = WebService::where('active', 1)->limit(4)->get();
        $portfolios     = WebPortfolio::where('active', 1)->limit(8)->get();
        $clients        = WebClient::where('active', 1)->limit(12)->get();
        $faqs           = WebFaq::where('active', 1)->limit(12)->get();
        $landingPage    = true;
        return view('landing-page', [
            'services' => $services,
            'portfolios' => $portfolios,
            'clients' => $clients,
            'faqs' => $faqs,
            'landingPage' => $landingPage
        ]);
    }

    public function order()
    {
        $services       = WebService::where('active', 1)->limit(4)->get();
        $portfolios     = WebPortfolio::where('active', 1)->limit(8)->get();
        $clients        = WebClient::where('active', 1)->limit(12)->get();
        $faqs           = WebFaq::where('active', 1)->limit(12)->get();
        $landingPage    = false;
        return view('landing-page', [
            'services' => $services,
            'portfolios' => $portfolios,
            'clients' => $clients,
            'faqs' => $faqs,
            'landingPage' => $landingPage
        ]);
    }
}
