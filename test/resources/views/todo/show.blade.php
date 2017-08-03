@extends('layout.app');

@section('body')
	<br>
	<a href="/todo" class="btn btn-info">Back</a>
	<div class="col-lg-offset-4 col-lg-4">{{$todo->title}}</div>
	<p>{{$todo->body}}</p>
@endsection