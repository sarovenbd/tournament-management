<?php

namespace App\Http\Controllers;

use App\Result;
use App\Stream;
use App\Tournament;
use Illuminate\Http\Request;

class TournamentPageController extends Controller
{

    public function tournaments(){
        $tournaments=Tournament::orderBy('created_at','DESC')->paginate(9);
        $upcoming_results=Result::orderBy('created_at','DESC')->where('status','upcoming')->take(3)->get();
        $finished_results=Result::orderBy('created_at','DESC')->where('status','finished')->take(3)->get();
        $streams=Stream::orderBy('created_at','DESC')->take(6)->get();

        return view('tournaments',compact('tournaments','streams','upcoming_results','finished_results'));
    }

    public function singleTournament($slug){
        $tournament=Tournament::where('slug',$slug)->firstorfail();
        $streams=Stream::orderBy('created_at','DESC')->take(6)->get();
        return view('tournament',compact('tournament','streams'));
    }
}
