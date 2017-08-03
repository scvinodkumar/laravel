@extends('layout.app');

@section('title','Songs Index');

@section('body')
	{{'Songs are Everything'}}
	<Br>
	@foreach ($songs as $song)
		{{$song->title}}
	@endforeach
@endsection