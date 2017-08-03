<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
class Pagination extends Controller
{
    public function users()
	{
		//$users = User::all();
		//$users = User::paginate(2);
		$users = User::simplepaginate(2);
		return view('pagination',compact('users'));
	}
}
