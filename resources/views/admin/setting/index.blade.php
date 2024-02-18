@extends('layouts.admin') @section('title')
<title>Settings</title>
@endsection @section('content')
@section('css')
<link rel="stylesheet" href="{{asset('/admins/admin.css')}}"> 
@endsection
@section('js')
 <script src="{{asset('vendors/sweetarlert2/sweetarlert2.js')}}"></script>
 <script type="text/javascript" src="{{asset('/admins/admin.js')}}"></script> 
@endsection
<div class="content-wrapper">
    @include('partials.content-header',['name'=>'Settings','key'=>'List'])
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="btn-group">
                        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            Action
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="{{route('settings.create').'?type=Text'}}">Text</a>
                            <a class="dropdown-item" href="{{route('settings.create').'?type=Textarea'}}">Textarea</a>

                        </div>
                    </div>


                </div>
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Config key</th>
                                <th scope="col">Config value</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($settings as $setting)
                            <tr>
                                <th scope="row">{{$setting->id}}</th>
                                <td>{{$setting->config_key}}</td>
                                <td>{{$setting->config_value}}</td>
                                <td>
                                    <a href="{{route('settings.edit',['id'=>$setting->id]). '?type=' . $setting->type  }} "
                                        class="btn btn-default">Edit</a>
                                    <a href="" data-url="{{route('settings.delete',['id'=>$setting->id])}}" class="btn btn-danger action_delete">Delete</a>
                                </td>
                            </tr>
                            @endforeach

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
