<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGearsTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('gears', function(Blueprint $table)
		{
			$table->increments('id');
			$table->text('name')->nullable();
			$table->mediumText('description')->nullable();
			$table->text('image')->nullable();
			$table->double('price')->nullable();
			$table->text('link')->nullable();
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
		Schema::drop('gears');
	}
}
