<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;


class Result extends Model
{
    use Translatable;
    protected $translatable = ['title','description','remarks','team_a_point','team_b_point'];
    
    public function teamA(){
        return $this->belongsTo(Team::class,'team_a_id');
    }

    public function teamB(){
        return $this->belongsTo(Team::class,'team_b_id');
    }

    public function tournament(){
        return $this->belongsTo(Tournament::class);
    }
}
