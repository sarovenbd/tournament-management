<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTeamsTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('teams', function(Blueprint $table)
		{
			$table->increments('id');
			$table->text('title')->nullable();
			$table->text('logo')->nullable();
			$table->text('slug')->nullable();
			$table->mediumText('about')->nullable();
			$table->date('founding_date')->nullable();
			$table->integer('wins')->nullable();
			$table->integer('loses')->nullable();
			$table->integer('total_game')->nullable();
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
		Schema::drop('teams');
	}
}
