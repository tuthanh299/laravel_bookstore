@extends('layouts.admin') @section('title')
<title>Sửa Slider</title>
@endsection @section('content')
@section('css')

<link href="{{asset('admins/admin.css')}}" rel="stylesheet" />
@endsection
<div class="content-wrapper">

    @include('partials.content-header',['name'=>'Slider','key'=>'Edit'])

    <div class="content">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-6">
                    <form action=" {{route('slider.update',['id'=>$slider->id])}} " method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>Tên Slider</label>
                            <input type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                                placeholder="Nhập tên slider" value="{{$slider->name}}">
                            @error('name')
                            <div class="alert alert-danger">{{$message}}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Mô tả</label>

                            <textarea name="description" class="form-control @error('description') is-invalid @enderror"
                                rows="4">{{$slider->description}}</textarea>
                            @error('description')
                            <div class="alert alert-danger">{{$message}}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Hình ảnh</label>
                            <input type="file" class="form-control-file @error('image_path') is-invalid @enderror"
                                name="image_path">
                                <div class="col-4 box-image">
                                <div class="row">
                                    <img class="image-slider" src="{{$slider->image_path}}" alt="">
                                </div>
                            </div>
                            @error('image_path')
                            <div class="alert alert-danger">{{$message}}</div>
                            @enderror
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>

        </div>

    </div>

</div>


@endsection