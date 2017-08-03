@extends('todo.create')

@section('editTitle',$todo->title)
@section('editBody',$todo->body)
@section('editId',$todo->id)

@section('editMethod')
	{{method_field('PUT')}}
@endsection