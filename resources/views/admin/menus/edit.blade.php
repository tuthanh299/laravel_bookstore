@extends('layouts.admin') @section('title')
<title>Trang Chủ</title>
@endsection @section('content')
 
<div class="content-wrapper">
   
    @include('partials.content-header',['name'=>'Menus','key'=>'Edit'])
     
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                
                <div class="col-md-6">
                    <form action="{{route('menus.update',['id'=> $menuIdEdit->id])}}" method="POST"> 
                        @csrf
                        <div class="form-group">
                            <label>Tên Menu</label>
                            <input type="text" class="form-control" name="name" placeholder="Nhập tên menu"
                            value="{{ $menuIdEdit->name }}">
                        </div>
                        <div class="form-group">
                            <label>Chọn Menu Cha</label>
                            <select class="form-control" name="parent_id">
                                <option value="0">Chọn Menu Cha</option>
                                {!! $optionSelect !!}
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
            
        </div>
         
    </div>
  
</div>
 

@endsection
