<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\user;
use App\role;
use App\post;

class pageController extends Controller
{
    public function welcome()
	{
		//$user = user::find(2);
		//$mobiles = user::find(1)->mobile;
		//return $mobiles;
		//$roles = user::find(2)->roles;
		//$post = $post::first();
		//return $post->tags;
		$user = role::find(1)->users;
		return $user;
		return view('welcome', compact('mobiles'));
	}
	public function about()
	{
		//$array_data = ['vinod','Kumar','Saravana'];
		//return view('about',['array_data' => $array_data]);
		return view('about');
	}	
}
