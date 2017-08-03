<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class user extends Model
{
	public function passport()
	{
		return $this->hasOne(Passport::class);
	}
	public function mobile()
	{
		return $this->hasMany(Mobile::class);
	}
	public function roles()
	{
		return $this->belongsToMany(role::class);
	}
	public function test()
	{
		return $this->hasMany("App\test");
	}
}
