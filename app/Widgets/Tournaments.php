<?php

namespace App\Widgets;

use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class Tournaments extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Tournament::count();
        $string = 'Tournaments';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-trophy',
            'title'  => "{$count} {$string}",
            'text'   => __('You have '.$count.' tournaments in your database. Click on button below to view all the tournaments.', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => 'View all tournaments',
                'link' => route('voyager.tournaments.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/01.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        $tournament=\App\Tournament::first();
        return Auth::user()->can('browse',$tournament);
    }
}
