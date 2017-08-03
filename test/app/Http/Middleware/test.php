<?php

namespace App\Http\Middleware;

use Closure;
use App\user;

class test
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $name)
    {
        $user = user::find(2);
		if($name != $user->name) {
			throw new \Exception("Your name is not Vinod");
		}
		/*
		$ip = $request->ip();
		if($ip =='127.0.0.1')
		{
			return redirect('/todo');
			//throw new \Exception("Your IP is correct");
		}
		*/
		return $next($request);
    }
}
