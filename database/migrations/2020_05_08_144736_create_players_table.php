<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlayersTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('players', function(Blueprint $table)
		{
			$table->increments('id');
			$table->text('name')->nullable();
			$table->text('slug')->nullable();
			$table->mediumText('bio')->nullable();
			$table->text('country')->nullable();
			$table->integer('age')->nullable();
			$table->integer('total_game')->nullable();
			$table->integer('wins')->nullable();
			$table->integer('loses')->nullable();
			$table->text('image')->nullable();
			$table->text('facebook_url')->nullable();
			$table->text('twitter_url')->nullable();
			$table->text('twitch_url')->nullable();
			$table->text('youtube_url')->nullable();
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('players');
	}
}
