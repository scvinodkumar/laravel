@extends('layout.app');

@section('body');
	<br>
	@include('todo.partials.message')	
	<a href="todo/create" class="btn btn-info">Add New</a>
	<div class="col-lg-6 col-lg-offset-3">
	
		<center><h1>Todo Lists</h1></center>	
		
		<ul class="list-group col-lg-8">
		@foreach($todos as $todo)
		  <li class="list-group-item">				
			<a href="{{'/todo/'.$todo->id}}">{{$todo->title}}</a>
			<span class="pull-right">{{$todo->created_at->diffforHumans()}}</span>
		  </li>
		@endforeach
		</ul>	
		
		<ul class="list-group col-lg-4">
		@foreach($todos as $todo)
			<li class="list-group-item">
				<a href="{{'/todo/'.$todo->id.'/edit'}}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
				<form class="form-group pull-right" action="{{'/todo/'.$todo->id}}" method="post">
					{{csrf_field()}}
					{{method_field('DELETE')}}
					<button type="submit" style="border:none;"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
				</form>
			</li>	
		@endforeach
		</ul>		
		
	</div>	
@endsection