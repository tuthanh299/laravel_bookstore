@extends('layouts.admin') @section('title')
<title>Setting</title>
@endsection @section('content')

@section('css')
<link href="{{asset('vendors/select2/select2.min.css')}}" rel="stylesheet" />
<link href="{{asset('admins/admin.css')}}" rel="stylesheet" />
@endsection

<div class="content-wrapper">

    @include('partials.content-header',['name'=>'Setting','key'=>'Add'])

    <div class="content">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-6">
                    <form action="{{route('settings.store').'?type='.request()->type}} " method="POST">
                        @csrf
                        <div class="form-group">
                            <label>Config key</label>
                            <input type="text" class="form-control @error('config_key') is-invalid @enderror"
                                name="config_key" placeholder="Nhập config key" value="{{old('config_key')}}">
                            @error('config_key')
                            <div class="alert alert-danger">{{$message}}</div>
                            @enderror
                        </div>

                        @if(request()->type ==='Text')

                        <div class="form-group">
                            <label>Config value</label>
                            <input type="text" class="form-control @error('config_value') is-invalid @enderror"
                                name="config_value" placeholder="Nhập config value" value="{{old('config_value')}}">
                            @error('config_value')
                            <div class="alert alert-danger">{{$message}}</div>
                            @enderror
                        </div>

                        @elseif(request()->type ==='Textarea')
                        <div class="form-group">
                            <label>Config value</label>
                            <textarea class="form-control @error('config_value') is-invalid @enderror"
                                name="config_value" placeholder="Nhập config value" rows="5">
                            </textarea>
                            @error('config_value')
                            <div class="alert alert-danger">{{$message}}</div>
                            @enderror
                        </div>
                        @endif
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>

        </div>

    </div>

</div>


@endsection
