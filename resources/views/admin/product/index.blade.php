@extends('layouts.admin') @section('title')
<title>Thêm sản phẩm</title>
@endsection @section('content') 
<div class="content-wrapper"> 
    @include('partials.content-header',['name'=>'Product','key'=>'List']) 
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <a href="{{route('product.create')}} " class="btn btn-success float-right m-2">Add</a>
                </div>
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Tên Sản Phẩm</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Hình Ảnh</th>
                                <th scope="col">Danh mục</th>
                                <th scope="col">Action</th> 
                            </tr>
                        </thead>
                        <tbody>
 
                            <tr>
                                <th scope="row">1</th>
                                <td>Thương Nhớ Trà Long</td>
                                <td>70.000.000đ</td>
                                <td>
                                    <img src="" alt="">
                                </td>
                                <td>Tiểu Thuyết</td> 
                                <td>
                                    <a href="" class="btn btn-default">Edit</a>
                                    <a href=" " class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                          
                        </tbody>
                    </table>
                </div>
                 <div class="col-md-12">
                  
                 </div>
            </div> 
        </div> 
    </div> 
</div>


@endsection
