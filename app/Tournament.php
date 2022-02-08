<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Tournament extends Model
{
    use Translatable;
    protected $translatable = ['title','about','prize','venue','groups','players'];

    public function teams(){
        return $this->belongsToMany(Team::class,'tournament_team','tournament_id','team_id');
    }
}
