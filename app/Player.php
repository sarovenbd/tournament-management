<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Player extends Model
{
    use Translatable;
    protected $translatable = ['name','bio','country','age','total_game','wins','loses'];

    public function gears(){
        return $this->belongsToMany(Gear::class,'player_gear','player_id','gear_id');
    }
}
