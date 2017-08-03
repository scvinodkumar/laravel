@extends('layout.app');

@section('title','Home');

@section('body')
	Welcome Mobile number are
	@foreach($mobiles as $mobile)
		{{$mobile->mobile}}
	@endforeach
@endsection