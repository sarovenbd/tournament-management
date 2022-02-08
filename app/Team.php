<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Team extends Model
{
    use Translatable;
    protected $translatable = ['title','about','wins','loses','total_game'];

    public function players(){
        return $this->belongsToMany(Player::class,'player_team','team_id','player_id');
    }
}
