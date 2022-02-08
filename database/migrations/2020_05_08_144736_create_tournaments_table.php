<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTournamentsTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tournaments', function(Blueprint $table)
		{
			$table->increments('id');
			$table->text('title')->nullable();
			$table->text('logo')->nullable();
			$table->mediumText('about')->nullable();
			$table->double('prize')->nullable();
			$table->text('venue')->nullable();
			$table->integer('groups')->nullable();
			$table->dateTime('date')->nullable();
			$table->timestamps();
			$table->text('slug')->nullable();
			$table->integer('players')->nullable();
			$table->text('status')->nullable();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('tournaments');
	}
}
