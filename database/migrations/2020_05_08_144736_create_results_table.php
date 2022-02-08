<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResultsTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('results', function(Blueprint $table)
		{
			$table->increments('id');
			$table->text('title')->nullable();
			$table->mediumText('description')->nullable();
			$table->integer('tournament_id')->nullable();
			$table->integer('team_a_id')->nullable();
			$table->integer('team_a_point')->nullable();
			$table->integer('team_b_id')->nullable();
			$table->integer('team_b_point')->nullable();
			$table->mediumText('remarks')->nullable();
			$table->timestamps();
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
		Schema::drop('results');
	}
}
