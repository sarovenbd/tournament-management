<?php

use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('permissions')->delete();
        
        \DB::table('permissions')->insert(array (
            0 => 
            array (
                'id' => 1,
                'key' => 'browse_admin',
                'table_name' => NULL,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-04-28 09:48:42',
            ),
            1 => 
            array (
                'id' => 2,
                'key' => 'browse_bread',
                'table_name' => NULL,
                'created_at' => '2020-04-28 09:48:42',
                'updated_at' => '2020-04-28 09:48:42',
            ),
            2 => 
            array (
                'id' => 3,
                'key' => 'browse_database',
                'table_name' => NULL,
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            3 => 
            array (
                'id' => 4,
                'key' => 'browse_media',
                'table_name' => NULL,
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            4 => 
            array (
                'id' => 5,
                'key' => 'browse_compass',
                'table_name' => NULL,
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            5 => 
            array (
                'id' => 6,
                'key' => 'browse_menus',
                'table_name' => 'menus',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            6 => 
            array (
                'id' => 7,
                'key' => 'read_menus',
                'table_name' => 'menus',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            7 => 
            array (
                'id' => 8,
                'key' => 'edit_menus',
                'table_name' => 'menus',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            8 => 
            array (
                'id' => 9,
                'key' => 'add_menus',
                'table_name' => 'menus',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            9 => 
            array (
                'id' => 10,
                'key' => 'delete_menus',
                'table_name' => 'menus',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            10 => 
            array (
                'id' => 11,
                'key' => 'browse_roles',
                'table_name' => 'roles',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            11 => 
            array (
                'id' => 12,
                'key' => 'read_roles',
                'table_name' => 'roles',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            12 => 
            array (
                'id' => 13,
                'key' => 'edit_roles',
                'table_name' => 'roles',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            13 => 
            array (
                'id' => 14,
                'key' => 'add_roles',
                'table_name' => 'roles',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            14 => 
            array (
                'id' => 15,
                'key' => 'delete_roles',
                'table_name' => 'roles',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            15 => 
            array (
                'id' => 16,
                'key' => 'browse_users',
                'table_name' => 'users',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            16 => 
            array (
                'id' => 17,
                'key' => 'read_users',
                'table_name' => 'users',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            17 => 
            array (
                'id' => 18,
                'key' => 'edit_users',
                'table_name' => 'users',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            18 => 
            array (
                'id' => 19,
                'key' => 'add_users',
                'table_name' => 'users',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            19 => 
            array (
                'id' => 20,
                'key' => 'delete_users',
                'table_name' => 'users',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            20 => 
            array (
                'id' => 21,
                'key' => 'browse_settings',
                'table_name' => 'settings',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            21 => 
            array (
                'id' => 22,
                'key' => 'read_settings',
                'table_name' => 'settings',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            22 => 
            array (
                'id' => 23,
                'key' => 'edit_settings',
                'table_name' => 'settings',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            23 => 
            array (
                'id' => 24,
                'key' => 'add_settings',
                'table_name' => 'settings',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            24 => 
            array (
                'id' => 25,
                'key' => 'delete_settings',
                'table_name' => 'settings',
                'created_at' => '2020-04-28 09:48:43',
                'updated_at' => '2020-04-28 09:48:43',
            ),
            25 => 
            array (
                'id' => 26,
                'key' => 'browse_categories',
                'table_name' => 'categories',
                'created_at' => '2020-04-28 09:48:48',
                'updated_at' => '2020-04-28 09:48:48',
            ),
            26 => 
            array (
                'id' => 27,
                'key' => 'read_categories',
                'table_name' => 'categories',
                'created_at' => '2020-04-28 09:48:48',
                'updated_at' => '2020-04-28 09:48:48',
            ),
            27 => 
            array (
                'id' => 28,
                'key' => 'edit_categories',
                'table_name' => 'categories',
                'created_at' => '2020-04-28 09:48:48',
                'updated_at' => '2020-04-28 09:48:48',
            ),
            28 => 
            array (
                'id' => 29,
                'key' => 'add_categories',
                'table_name' => 'categories',
                'created_at' => '2020-04-28 09:48:49',
                'updated_at' => '2020-04-28 09:48:49',
            ),
            29 => 
            array (
                'id' => 30,
                'key' => 'delete_categories',
                'table_name' => 'categories',
                'created_at' => '2020-04-28 09:48:49',
                'updated_at' => '2020-04-28 09:48:49',
            ),
            30 => 
            array (
                'id' => 31,
                'key' => 'browse_posts',
                'table_name' => 'posts',
                'created_at' => '2020-04-28 09:48:49',
                'updated_at' => '2020-04-28 09:48:49',
            ),
            31 => 
            array (
                'id' => 32,
                'key' => 'read_posts',
                'table_name' => 'posts',
                'created_at' => '2020-04-28 09:48:49',
                'updated_at' => '2020-04-28 09:48:49',
            ),
            32 => 
            array (
                'id' => 33,
                'key' => 'edit_posts',
                'table_name' => 'posts',
                'created_at' => '2020-04-28 09:48:49',
                'updated_at' => '2020-04-28 09:48:49',
            ),
            33 => 
            array (
                'id' => 34,
                'key' => 'add_posts',
                'table_name' => 'posts',
                'created_at' => '2020-04-28 09:48:49',
                'updated_at' => '2020-04-28 09:48:49',
            ),
            34 => 
            array (
                'id' => 35,
                'key' => 'delete_posts',
                'table_name' => 'posts',
                'created_at' => '2020-04-28 09:48:50',
                'updated_at' => '2020-04-28 09:48:50',
            ),
            35 => 
            array (
                'id' => 36,
                'key' => 'browse_pages',
                'table_name' => 'pages',
                'created_at' => '2020-04-28 09:48:50',
                'updated_at' => '2020-04-28 09:48:50',
            ),
            36 => 
            array (
                'id' => 37,
                'key' => 'read_pages',
                'table_name' => 'pages',
                'created_at' => '2020-04-28 09:48:50',
                'updated_at' => '2020-04-28 09:48:50',
            ),
            37 => 
            array (
                'id' => 38,
                'key' => 'edit_pages',
                'table_name' => 'pages',
                'created_at' => '2020-04-28 09:48:50',
                'updated_at' => '2020-04-28 09:48:50',
            ),
            38 => 
            array (
                'id' => 39,
                'key' => 'add_pages',
                'table_name' => 'pages',
                'created_at' => '2020-04-28 09:48:50',
                'updated_at' => '2020-04-28 09:48:50',
            ),
            39 => 
            array (
                'id' => 40,
                'key' => 'delete_pages',
                'table_name' => 'pages',
                'created_at' => '2020-04-28 09:48:50',
                'updated_at' => '2020-04-28 09:48:50',
            ),
            40 => 
            array (
                'id' => 41,
                'key' => 'browse_hooks',
                'table_name' => NULL,
                'created_at' => '2020-04-28 09:48:52',
                'updated_at' => '2020-04-28 09:48:52',
            ),
            41 => 
            array (
                'id' => 42,
                'key' => 'browse_tournaments',
                'table_name' => 'tournaments',
                'created_at' => '2020-04-30 08:58:54',
                'updated_at' => '2020-04-30 08:58:54',
            ),
            42 => 
            array (
                'id' => 43,
                'key' => 'read_tournaments',
                'table_name' => 'tournaments',
                'created_at' => '2020-04-30 08:58:54',
                'updated_at' => '2020-04-30 08:58:54',
            ),
            43 => 
            array (
                'id' => 44,
                'key' => 'edit_tournaments',
                'table_name' => 'tournaments',
                'created_at' => '2020-04-30 08:58:54',
                'updated_at' => '2020-04-30 08:58:54',
            ),
            44 => 
            array (
                'id' => 45,
                'key' => 'add_tournaments',
                'table_name' => 'tournaments',
                'created_at' => '2020-04-30 08:58:54',
                'updated_at' => '2020-04-30 08:58:54',
            ),
            45 => 
            array (
                'id' => 46,
                'key' => 'delete_tournaments',
                'table_name' => 'tournaments',
                'created_at' => '2020-04-30 08:58:54',
                'updated_at' => '2020-04-30 08:58:54',
            ),
            46 => 
            array (
                'id' => 47,
                'key' => 'browse_teams',
                'table_name' => 'teams',
                'created_at' => '2020-04-30 09:12:14',
                'updated_at' => '2020-04-30 09:12:14',
            ),
            47 => 
            array (
                'id' => 48,
                'key' => 'read_teams',
                'table_name' => 'teams',
                'created_at' => '2020-04-30 09:12:14',
                'updated_at' => '2020-04-30 09:12:14',
            ),
            48 => 
            array (
                'id' => 49,
                'key' => 'edit_teams',
                'table_name' => 'teams',
                'created_at' => '2020-04-30 09:12:14',
                'updated_at' => '2020-04-30 09:12:14',
            ),
            49 => 
            array (
                'id' => 50,
                'key' => 'add_teams',
                'table_name' => 'teams',
                'created_at' => '2020-04-30 09:12:14',
                'updated_at' => '2020-04-30 09:12:14',
            ),
            50 => 
            array (
                'id' => 51,
                'key' => 'delete_teams',
                'table_name' => 'teams',
                'created_at' => '2020-04-30 09:12:14',
                'updated_at' => '2020-04-30 09:12:14',
            ),
            51 => 
            array (
                'id' => 52,
                'key' => 'browse_players',
                'table_name' => 'players',
                'created_at' => '2020-04-30 12:10:55',
                'updated_at' => '2020-04-30 12:10:55',
            ),
            52 => 
            array (
                'id' => 53,
                'key' => 'read_players',
                'table_name' => 'players',
                'created_at' => '2020-04-30 12:10:55',
                'updated_at' => '2020-04-30 12:10:55',
            ),
            53 => 
            array (
                'id' => 54,
                'key' => 'edit_players',
                'table_name' => 'players',
                'created_at' => '2020-04-30 12:10:55',
                'updated_at' => '2020-04-30 12:10:55',
            ),
            54 => 
            array (
                'id' => 55,
                'key' => 'add_players',
                'table_name' => 'players',
                'created_at' => '2020-04-30 12:10:55',
                'updated_at' => '2020-04-30 12:10:55',
            ),
            55 => 
            array (
                'id' => 56,
                'key' => 'delete_players',
                'table_name' => 'players',
                'created_at' => '2020-04-30 12:10:55',
                'updated_at' => '2020-04-30 12:10:55',
            ),
            56 => 
            array (
                'id' => 57,
                'key' => 'browse_results',
                'table_name' => 'results',
                'created_at' => '2020-05-06 15:05:29',
                'updated_at' => '2020-05-06 15:05:29',
            ),
            57 => 
            array (
                'id' => 58,
                'key' => 'read_results',
                'table_name' => 'results',
                'created_at' => '2020-05-06 15:05:29',
                'updated_at' => '2020-05-06 15:05:29',
            ),
            58 => 
            array (
                'id' => 59,
                'key' => 'edit_results',
                'table_name' => 'results',
                'created_at' => '2020-05-06 15:05:29',
                'updated_at' => '2020-05-06 15:05:29',
            ),
            59 => 
            array (
                'id' => 60,
                'key' => 'add_results',
                'table_name' => 'results',
                'created_at' => '2020-05-06 15:05:29',
                'updated_at' => '2020-05-06 15:05:29',
            ),
            60 => 
            array (
                'id' => 61,
                'key' => 'delete_results',
                'table_name' => 'results',
                'created_at' => '2020-05-06 15:05:29',
                'updated_at' => '2020-05-06 15:05:29',
            ),
            61 => 
            array (
                'id' => 62,
                'key' => 'browse_gears',
                'table_name' => 'gears',
                'created_at' => '2020-05-06 15:28:45',
                'updated_at' => '2020-05-06 15:28:45',
            ),
            62 => 
            array (
                'id' => 63,
                'key' => 'read_gears',
                'table_name' => 'gears',
                'created_at' => '2020-05-06 15:28:45',
                'updated_at' => '2020-05-06 15:28:45',
            ),
            63 => 
            array (
                'id' => 64,
                'key' => 'edit_gears',
                'table_name' => 'gears',
                'created_at' => '2020-05-06 15:28:45',
                'updated_at' => '2020-05-06 15:28:45',
            ),
            64 => 
            array (
                'id' => 65,
                'key' => 'add_gears',
                'table_name' => 'gears',
                'created_at' => '2020-05-06 15:28:45',
                'updated_at' => '2020-05-06 15:28:45',
            ),
            65 => 
            array (
                'id' => 66,
                'key' => 'delete_gears',
                'table_name' => 'gears',
                'created_at' => '2020-05-06 15:28:45',
                'updated_at' => '2020-05-06 15:28:45',
            ),
            66 => 
            array (
                'id' => 67,
                'key' => 'browse_testimonials',
                'table_name' => 'testimonials',
                'created_at' => '2020-05-07 16:01:17',
                'updated_at' => '2020-05-07 16:01:17',
            ),
            67 => 
            array (
                'id' => 68,
                'key' => 'read_testimonials',
                'table_name' => 'testimonials',
                'created_at' => '2020-05-07 16:01:17',
                'updated_at' => '2020-05-07 16:01:17',
            ),
            68 => 
            array (
                'id' => 69,
                'key' => 'edit_testimonials',
                'table_name' => 'testimonials',
                'created_at' => '2020-05-07 16:01:17',
                'updated_at' => '2020-05-07 16:01:17',
            ),
            69 => 
            array (
                'id' => 70,
                'key' => 'add_testimonials',
                'table_name' => 'testimonials',
                'created_at' => '2020-05-07 16:01:17',
                'updated_at' => '2020-05-07 16:01:17',
            ),
            70 => 
            array (
                'id' => 71,
                'key' => 'delete_testimonials',
                'table_name' => 'testimonials',
                'created_at' => '2020-05-07 16:01:17',
                'updated_at' => '2020-05-07 16:01:17',
            ),
            71 => 
            array (
                'id' => 72,
                'key' => 'browse_streams',
                'table_name' => 'streams',
                'created_at' => '2020-05-07 16:14:36',
                'updated_at' => '2020-05-07 16:14:36',
            ),
            72 => 
            array (
                'id' => 73,
                'key' => 'read_streams',
                'table_name' => 'streams',
                'created_at' => '2020-05-07 16:14:36',
                'updated_at' => '2020-05-07 16:14:36',
            ),
            73 => 
            array (
                'id' => 74,
                'key' => 'edit_streams',
                'table_name' => 'streams',
                'created_at' => '2020-05-07 16:14:36',
                'updated_at' => '2020-05-07 16:14:36',
            ),
            74 => 
            array (
                'id' => 75,
                'key' => 'add_streams',
                'table_name' => 'streams',
                'created_at' => '2020-05-07 16:14:36',
                'updated_at' => '2020-05-07 16:14:36',
            ),
            75 => 
            array (
                'id' => 76,
                'key' => 'delete_streams',
                'table_name' => 'streams',
                'created_at' => '2020-05-07 16:14:36',
                'updated_at' => '2020-05-07 16:14:36',
            ),
        ));
        
        
    }
}