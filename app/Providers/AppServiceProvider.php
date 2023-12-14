<?php

namespace App\Providers;

use Illuminate\Support\Facades\Blade;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
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
        Blade::directive('statusText', function ($status) {
            return "<?php
                switch ($status) {
                    case -1: echo 'Ditolak'; break;
                    case 100: echo 'Draft'; break;
                    case 0: echo 'Pending'; break;
                    case 1: echo 'Diterima'; break;
                }
            ?>";
        });
    }
}
