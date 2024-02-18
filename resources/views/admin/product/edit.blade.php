@extends('layouts.admin')
@section('title')
<title>Sửa Sản Phẩm</title>
@endsection
@section('css')
<link href="{{asset('vendors/select2/select2.min.css')}}" rel="stylesheet" />
<link href="{{asset('admins/admin.css')}}" rel="stylesheet" />
@endsection

@section('content')

<div class="content-wrapper">

    @include('partials.content-header',['name'=>'Product','key'=>'Edit'])
    <form action="{{route('product.update',['id'=>$product->id])}} " method="POST" enctype="multipart/form-data">
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        @csrf
                        <div class="form-group">
                            <label>Tên Sản Phẩm</label>
                            <input type="text" value="{{$product->name}}" class="form-control" name="name" placeholder="Nhập tên sản phẩm">
                        </div>
                        <div class="form-group">
                            <label>Giá Sản Phẩm</label>
                            <input type="text" value="{{$product->price}}" class="form-control" name="price" placeholder="Nhập giá sản phẩm">
                        </div>
                        <div class="form-group">
                            <label>Hình Ảnh Đại Diện</label>
                            <input type="file"  class="form-control-file" name="feature_image_path">
                            <div class="col-4 box-image">
                                <div class="row">
                                    <img class="image-core" src="{{$product->feature_image_path}}" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Hình Ảnh Chi Tiết</label>
                            <input type="file" multiple class="form-control-file" name="image_path[]">
                            <div class="col-md-12 box-gallery">
                                <div class="row">
                                    @foreach($product ->productImages as $productImageItem)
                                    <div class="col-md-3">
                                        <img class="image-gallery" src="{{$productImageItem->image_path}}" alt="">
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Chọn Danh Mục</label>
                            <select class="form-control select2_init" name="category_id">
                                <option value="0">Chọn Danh Mục</option>
                                 {!! $htmlOption !!}   
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Nhập Tags Sản Phẩm</label>
                            <select name="tags[]" class="form-control tags_select_choose" multiple="multiple">
                                @foreach($product ->tags as $tagItem)
                                <option value="{{$tagItem->id}}" selected>
                                {{$tagItem->name}}
                                </option>
                                @endforeach
                            </select>
                        </div>


                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Nội dung</label>
                            <textarea class="form-control tinymce_editor_init" name="contents"
                                id="exampleFormControlTextarea1" rows="3">
                                {{$product->content}}</textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary">Submit</button> 
                    </div>
                </div> 
            </div> 
        </div>
    </form>
</div>


@endsection
@section('js')
<script src="{{asset('vendors/select2/select2.min.js')}}"></script>
<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script src="{{asset('admins/admin.js')}}"></script>
@endsection