<?php

namespace App\Http\Controllers;

class MenuController extends Controller
{
    public function index()
    {
        return view('menus.index');
    }
    public function create()
    {
        return view('menus.add');

    }

}
