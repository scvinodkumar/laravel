<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Pagination</title>
		<style>
		.pagination li {
			display:inline;
		}
		</style>
    </head>
    <body>		
        <div class="row">
			<div class="container">
				<table>
					<thead>
						<th>Index</th>
						<th>Name</th>
						<th>Email</th>
					</thead>
					<tbody>
					@foreach($users as $user)
						<tr>
							<td>{{$loop->index+1}}</td>
							<td>{{$user->name}}</td>
							<td>{{$user->email}}</td>
						</tr>
					@endforeach					
					</tbody>
				</table>
				{{$users->links()}}				
			</div>
		</div>		
    </body>
</html>
