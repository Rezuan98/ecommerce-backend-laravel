<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\Models\Category;
use Cache;

class CategoryProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('*', function ($view) {
            $categories = Cache::remember('categories', 60*24, function() {
                return Category::where('status', 1)
                             ->with(['subcategories' => function($query) {
                                 $query->where('status', 1);
                             }])
                             ->limit(10)
                             ->get();
            });
            
            $view->with('categories', $categories);
        });
    }

   
}
