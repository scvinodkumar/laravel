<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use App\mail\sendMail;

class mailController extends Controller
{
    public function send()
	{
		
		/*
		Mail::send(['text'=>'mail'],['name','Vinodkumar'],function($message){
			$message->to('scvinodkumar.php@gmail.com','To Vinodkumar')->subject('Test Email');
			$message->from('scvinodkumar.php@gmail.com','Vinodkumar');
		});
		*/
		
		Mail::send(new sendMail());
	}
	
	public function email()
	{
		//$this->load->view('email');
		return view('email');
	}
}