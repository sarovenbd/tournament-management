<?php

namespace App\Http\Controllers;

use App\Player;
use App\Testimonial;
use Illuminate\Http\Request;

class PlayerPageController extends Controller
{
    
    public function players(){
        $players=Player::orderBy('created_at','DESC')->paginate(9);
        $testimonials=Testimonial::orderBy('created_at','DESC')->where('status','published')->take(3)->get();
        return view('players',compact('players','testimonials'));
    }

    public function singlePlayer($slug){
        $player=Player::where('slug',$slug)->firstorfail();
        $testimonials=Testimonial::orderBy('created_at','DESC')->where('status','published')->take(3)->get();
        return view('player',compact('player','testimonials'));
    }
}
