<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStreamsTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('streams', function(Blueprint $table)
		{
			$table->increments('id');
			$table->text('title')->nullable();
			$table->mediumText('description')->nullable();
			$table->text('image')->nullable();
			$table->text('url')->nullable();
			$table->text('status')->nullable();
			$table->timestamps();
			$table->text('slug')->nullable();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('streams');
	}
}
