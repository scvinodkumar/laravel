<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\todo;

class todocontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $todos = todo::all();
		return view('todo.home',compact('todos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('todo.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $todo = new todo;
		$this->validate($request,[
				'body' => 'required',
				'title' => 'required|unique:todos',
			]);
		$todo->title = $request->title;
		$todo->body = $request->body;
		$todo->save();
		return redirect('todo');
		//return $request->all();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $todo = todo::find($id);
		return view('todo.show',compact('todo'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
		$todo = todo::find($id);
		return view('todo.edit',compact('todo'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $todo = todo::find($id);
		$this->validate($request,[
				'body' => 'required',
				'title' => 'required',
			]);
		$todo->title = $request->title;
		$todo->body = $request->body;
		$todo->save();
		session()->flash('message','Updated Successfully');
		return redirect('todo');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $todo = todo::find($id);
		$todo->delete();
		session()->flash('message','Delete Successfully');
		return redirect('/todo');		
    }
}
