@extends('layouts.admin') @section('title')
<title>Thêm User</title>
@endsection @section('content')
@section('css')
<link href="{{asset('vendors/select2/select2.min.css')}}" rel="stylesheet" />
<link href="{{asset('admins/admin.css')}}" rel="stylesheet" />
@endsection
@section('js')
<script src="{{asset('vendors/select2/select2.min.js')}}"></script>
 <script src="{{asset('admins/admin.js')}}"></script>

@endsection
<div class="content-wrapper">

    @include('partials.content-header',['name'=>'User','key'=>'Add'])

    <div class="content">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-6">
                    <form action="{{route('users.store')}}  " method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>Tên User</label>
                            <input type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                                placeholder="Nhập tên user" value="{{old('name')}}">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" class="form-control @error('email') is-invalid @enderror" name="email"
                                placeholder="Nhập email" value="{{old('email')}}">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control @error('password') is-invalid @enderror"
                                name="password" placeholder="Nhập password">
                        </div>
                        <div class="form-group">
                            <label>Vai trò</label>

                            <select name="role_id[]" id="" class="form-control select2_option" multiple>
                                <option value="">Admin </option>
                                @foreach ($roles as $role)
                                <option value="{{$role->id}}">{{$role->name}}</option>
                                 @endforeach
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
