<?php

use Illuminate\Database\Seeder;

class MenuItemsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('menu_items')->delete();
        
        \DB::table('menu_items')->insert(array (
            0 => 
            array (
                'id' => 1,
                'menu_id' => 1,
                'title' => 'Dashboard',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-boat',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 1,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-04-28 09:48:42',
                'route' => 'voyager.dashboard',
                'parameters' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'menu_id' => 1,
                'title' => 'Media',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-images',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 4,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-05-03 15:34:55',
                'route' => 'voyager.media.index',
                'parameters' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'menu_id' => 1,
                'title' => 'Users',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-person',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 3,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-04-28 09:48:42',
                'route' => 'voyager.users.index',
                'parameters' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'menu_id' => 1,
                'title' => 'Roles',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-lock',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 2,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-04-28 09:48:42',
                'route' => 'voyager.roles.index',
                'parameters' => NULL,
            ),
            4 => 
            array (
                'id' => 5,
                'menu_id' => 1,
                'title' => 'Tools',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-tools',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 15,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-05-08 10:35:40',
                'route' => NULL,
                'parameters' => NULL,
            ),
            5 => 
            array (
                'id' => 6,
                'menu_id' => 1,
                'title' => 'Menu Builder',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-list',
                'color' => NULL,
                'parent_id' => 5,
                'order' => 1,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-05-03 15:34:55',
                'route' => 'voyager.menus.index',
                'parameters' => NULL,
            ),
            6 => 
            array (
                'id' => 7,
                'menu_id' => 1,
                'title' => 'Database',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-data',
                'color' => NULL,
                'parent_id' => 5,
                'order' => 2,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-05-03 15:34:55',
                'route' => 'voyager.database.index',
                'parameters' => NULL,
            ),
            7 => 
            array (
                'id' => 8,
                'menu_id' => 1,
                'title' => 'Compass',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-compass',
                'color' => NULL,
                'parent_id' => 5,
                'order' => 3,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-05-03 15:34:55',
                'route' => 'voyager.compass.index',
                'parameters' => NULL,
            ),
            8 => 
            array (
                'id' => 9,
                'menu_id' => 1,
                'title' => 'BREAD',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-bread',
                'color' => NULL,
                'parent_id' => 5,
                'order' => 4,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-05-03 15:34:55',
                'route' => 'voyager.bread.index',
                'parameters' => NULL,
            ),
            9 => 
            array (
                'id' => 10,
                'menu_id' => 1,
                'title' => 'Settings',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-settings',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 16,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-05-08 10:35:40',
                'route' => 'voyager.settings.index',
                'parameters' => NULL,
            ),
            10 => 
            array (
                'id' => 11,
                'menu_id' => 1,
                'title' => 'Categories',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-categories',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 14,
                'created_at' => '2020-04-28 09:48:48',
                'updated_at' => '2020-05-08 10:35:40',
                'route' => 'voyager.categories.index',
                'parameters' => NULL,
            ),
            11 => 
            array (
                'id' => 12,
                'menu_id' => 1,
                'title' => 'Posts',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-news',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 12,
                'created_at' => '2020-04-28 09:48:49',
                'updated_at' => '2020-05-08 10:35:40',
                'route' => 'voyager.posts.index',
                'parameters' => NULL,
            ),
            12 => 
            array (
                'id' => 13,
                'menu_id' => 1,
                'title' => 'Pages',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-file-text',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 13,
                'created_at' => '2020-04-28 09:48:50',
                'updated_at' => '2020-05-08 10:35:40',
                'route' => 'voyager.pages.index',
                'parameters' => NULL,
            ),
            13 => 
            array (
                'id' => 14,
                'menu_id' => 1,
                'title' => 'Hooks',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-hook',
                'color' => NULL,
                'parent_id' => 5,
                'order' => 5,
                'created_at' => '2020-04-28 09:48:52',
                'updated_at' => '2020-05-03 15:34:55',
                'route' => 'voyager.hooks',
                'parameters' => NULL,
            ),
            14 => 
            array (
                'id' => 15,
                'menu_id' => 1,
                'title' => 'Tournaments',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-trophy',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 5,
                'created_at' => '2020-04-30 08:58:54',
                'updated_at' => '2020-05-03 15:35:10',
                'route' => 'voyager.tournaments.index',
                'parameters' => NULL,
            ),
            15 => 
            array (
                'id' => 16,
                'menu_id' => 1,
                'title' => 'Teams',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-people',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 6,
                'created_at' => '2020-04-30 09:12:14',
                'updated_at' => '2020-05-03 15:35:13',
                'route' => 'voyager.teams.index',
                'parameters' => NULL,
            ),
            16 => 
            array (
                'id' => 17,
                'menu_id' => 1,
                'title' => 'Players',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-person',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 7,
                'created_at' => '2020-04-30 12:10:55',
                'updated_at' => '2020-05-03 15:35:14',
                'route' => 'voyager.players.index',
                'parameters' => NULL,
            ),
            17 => 
            array (
                'id' => 18,
                'menu_id' => 2,
                'title' => 'Home',
                'url' => '/',
                'target' => '_self',
                'icon_class' => NULL,
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 1,
                'created_at' => '2020-05-01 11:27:01',
                'updated_at' => '2020-05-01 11:31:42',
                'route' => NULL,
                'parameters' => '',
            ),
            18 => 
            array (
                'id' => 19,
                'menu_id' => 2,
                'title' => 'News',
                'url' => '/posts',
                'target' => '_self',
                'icon_class' => NULL,
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 2,
                'created_at' => '2020-05-01 11:28:27',
                'updated_at' => '2020-05-01 11:33:00',
                'route' => NULL,
                'parameters' => '',
            ),
            19 => 
            array (
                'id' => 20,
                'menu_id' => 2,
                'title' => 'Teams',
                'url' => '/teams',
                'target' => '_self',
                'icon_class' => NULL,
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 3,
                'created_at' => '2020-05-01 11:29:24',
                'updated_at' => '2020-05-01 11:33:00',
                'route' => NULL,
                'parameters' => '',
            ),
            20 => 
            array (
                'id' => 21,
                'menu_id' => 2,
                'title' => 'Tournaments',
                'url' => '/tournaments',
                'target' => '_self',
                'icon_class' => NULL,
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 5,
                'created_at' => '2020-05-01 11:30:47',
                'updated_at' => '2020-05-02 11:26:16',
                'route' => NULL,
                'parameters' => '',
            ),
            21 => 
            array (
                'id' => 22,
                'menu_id' => 2,
                'title' => 'Players',
                'url' => '/players',
                'target' => '_self',
                'icon_class' => NULL,
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 4,
                'created_at' => '2020-05-02 11:26:09',
                'updated_at' => '2020-05-02 11:26:15',
                'route' => NULL,
                'parameters' => '',
            ),
            22 => 
            array (
                'id' => 23,
                'menu_id' => 3,
                'title' => 'Privacy Policy',
                'url' => '/page/privacy-policy',
                'target' => '_self',
                'icon_class' => NULL,
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 18,
                'created_at' => '2020-05-03 10:44:22',
                'updated_at' => '2020-05-03 10:44:22',
                'route' => NULL,
                'parameters' => '',
            ),
            23 => 
            array (
                'id' => 24,
                'menu_id' => 3,
                'title' => 'Terms & Condition',
                'url' => '/page/terms-condition',
                'target' => '_self',
                'icon_class' => NULL,
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 19,
                'created_at' => '2020-05-03 10:45:11',
                'updated_at' => '2020-05-03 10:45:11',
                'route' => NULL,
                'parameters' => '',
            ),
            24 => 
            array (
                'id' => 25,
                'menu_id' => 3,
                'title' => 'Contact',
                'url' => '#',
                'target' => '_self',
                'icon_class' => NULL,
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 20,
                'created_at' => '2020-05-03 10:47:16',
                'updated_at' => '2020-05-03 10:47:16',
                'route' => NULL,
                'parameters' => '',
            ),
            25 => 
            array (
                'id' => 26,
                'menu_id' => 1,
                'title' => 'Results',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-certificate',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 8,
                'created_at' => '2020-05-06 15:05:29',
                'updated_at' => '2020-05-08 10:35:15',
                'route' => 'voyager.results.index',
                'parameters' => NULL,
            ),
            26 => 
            array (
                'id' => 27,
                'menu_id' => 1,
                'title' => 'Gears',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-bag',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 9,
                'created_at' => '2020-05-06 15:28:45',
                'updated_at' => '2020-05-08 10:35:24',
                'route' => 'voyager.gears.index',
                'parameters' => NULL,
            ),
            27 => 
            array (
                'id' => 28,
                'menu_id' => 1,
                'title' => 'Testimonials',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-star',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 11,
                'created_at' => '2020-05-07 16:01:18',
                'updated_at' => '2020-05-08 10:35:40',
                'route' => 'voyager.testimonials.index',
                'parameters' => NULL,
            ),
            28 => 
            array (
                'id' => 29,
                'menu_id' => 1,
                'title' => 'Streams',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-video',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 10,
                'created_at' => '2020-05-07 16:14:36',
                'updated_at' => '2020-05-08 10:35:39',
                'route' => 'voyager.streams.index',
                'parameters' => NULL,
            ),
            29 => 
            array (
                'id' => 30,
                'menu_id' => 2,
                'title' => 'Streams',
                'url' => '/streams',
                'target' => '_self',
                'icon_class' => NULL,
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 21,
                'created_at' => '2020-05-08 11:02:12',
                'updated_at' => '2020-05-08 11:02:12',
                'route' => NULL,
                'parameters' => '',
            ),
        ));
        
        
    }
}