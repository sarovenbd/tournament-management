<?php

namespace App\Http\Controllers;

use App\Stream;
use Illuminate\Http\Request;

class StreamPageController extends Controller
{
    public function streams(){
        $streams=Stream::orderBy('created_at','DESC')->paginate(9);
        return view('streams',compact('streams'));
    }

    public function singleStream($slug){
        $stream=Stream::where('slug',$slug)->firstorfail();
        return view('stream',compact('stream'));
    }
}
