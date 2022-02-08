<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UpdateController extends Controller
{
    public function update($version){
        try {
        
            if ($version=='1.0.1'){
                DB::table('settings')->insert(array (
                
                    0 => 
                    array (
                        
                        'key' => 'hero.image',
                        'display_name' => 'Image',
                        'value' => '',
                        'details' => NULL,
                        'type' => 'image',
                        'order' => 10,
                        'group' => 'Hero',
                    ),
                    1 => 
                    array (
                        
                        'key' => 'hero.small_title',
                        'display_name' => 'Small Title',
                        'value' => NULL,
                        'details' => NULL,
                        'type' => 'text',
                        'order' => 11,
                        'group' => 'Hero',
                    ),
                    2 => 
                    array (
                        
                        'key' => 'hero.large_title',
                        'display_name' => 'Large Title',
                        'value' => NULL,
                        'details' => NULL,
                        'type' => 'text',
                        'order' => 12,
                        'group' => 'Hero',
                    ),
                ));
                
                 echo "Inserted Database Data"; 
            }
            else if ($version=='1.0.3'){
                DB::table('settings')->insert(array (
                    0 => 
                    array (
                        
                        'key' => 'site.lang_switch',
                        'display_name' => 'Language switcher',
                        'value' => NULL,
                        'details' => NULL,
                        'type' => 'checkbox',
                        'order' => 10,
                        'group' => 'Site',
                    ),
                ));
            }    
            else{
                return abort(404);
            }
  
            
        } catch (\Exception $e){
            return abort(404);
        }
    }
}
