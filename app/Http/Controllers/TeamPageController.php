<?php

namespace App\Http\Controllers;

use App\Team;
use Illuminate\Http\Request;

class TeamPageController extends Controller
{
    public function teams(){
        $teams=Team::orderBy('created_at','DESC')->paginate(9);
        return view('teams',compact('teams'));
    }

    public function singleTeam($slug){
        $team=Team::where('slug',$slug)->firstorfail();
        return view('team',compact('team'));
    }
}
