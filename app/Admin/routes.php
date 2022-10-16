<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('web-articles', WebArticleController::class);
    $router->resource('web-article-categories', WebArticleCategoryController::class);
    $router->resource('web-portfolios', WebPortfolioController::class);
    $router->resource('web-tags', WebTagController::class);
    $router->resource('web-services', WebServiceController::class);
    $router->resource('web-profiles', WebProfileController::class);
    $router->resource('web-clients', WebClientController::class);
    $router->resource('web-faqs', WebFaqController::class);

});
