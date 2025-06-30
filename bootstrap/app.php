<?php

use App\Http\Middleware\Admin\RoleAdmin;
use App\Http\Middleware\Authenticate;
use App\Http\Middleware\Driver\DriverAuth;
use App\Http\Middleware\Customer\CustomerAuth;
use App\Http\Middleware\Customer\BranchMiddleware;
use App\Http\Middleware\Customer\CartTransferMiddleware;
use App\Http\Middleware\Branch\BranchAuth;
use App\Http\Middleware\PhoneRequired;

use App\Http\Middleware\VerifyTurnstile;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__ . '/../routes/web.php',
        commands: __DIR__ . '/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        $middleware->alias([
            'auth' => Authenticate::class,
            'role' => RoleAdmin::class,
            'driver.auth' => DriverAuth::class,
            'CustomerAuth' => CustomerAuth::class,
            'branch.check' => BranchMiddleware::class,
            'branch.auth' => BranchAuth::class,
            'phone.required' => PhoneRequired::class,
            'turnstile' => VerifyTurnstile::class,
            'cart.transfer' => CartTransferMiddleware::class,
        ]);

        $middleware->web(append: [
            BranchMiddleware::class,
            CartTransferMiddleware::class,
        ]);
    })
    ->withExceptions(function (Exceptions $exceptions) {
        //
    })->create();
