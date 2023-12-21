@extends('layouts.admin') @section('title')
<title>Trang Chủ</title>
@endsection @section('content')
 
<div class="content-wrapper">
   
    @include('partials.content-header',['name'=>'menus','key'=>'Add'])
     
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                
                <div class="col-md-6">
                    <form action="{{route('menus.store')}}" method="POST"> 
                        @csrf
                        <div class="form-group">
                            <label>Tên danh mục</label>
                            <input type="text" class="form-control" name="name" placeholder="Nhập tên danh mục">
                        </div>
                        <div class="form-group">
                            <label>Chọn menu cha</label>https://www.youtube.com/watch?v=IJA3-z_ZhEU&list=PL3V6a6RU5ogEAKIuGjfPEJ77FGmEAQXTT&index=16
                            <select class="form-control" name="parent_id">
                                <option value="0">Chọn danh mục cha</option>
                                
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
