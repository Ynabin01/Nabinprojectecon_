<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EconController extends Controller
{
    public function index(){
        return view('Frontend.home');
    }
    public function inner(){
        return view('Frontend.inner');
    }
    public function newsevent(){
        return view('Frontend.newsevent');
    }
    public function gallery(){
        return view('Frontend.gallery');
    }
    public function contact(){
        return view('Frontend.contact');
    }
    public function memberform(){
        return view('Frontend.memberform');
    }
    public function memberlist(){
        return view('Frontend.memberlist');
    }
    public function newslist(){
        return view('Frontend.newslist');
    }


}
