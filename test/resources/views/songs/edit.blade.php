@extends('layout.app');

@section('title','Songs Edit');

@section('body')
	{{'Edit Songs are Everything'}}
	<Br>	
		{{$song->title}} By 
		{{$song->artist}}
@endsection