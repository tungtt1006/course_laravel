<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('classes', function (Blueprint $table) {
            $table->increments('id');
            $table->char('name', 50);
            $table->integer('products_id')->unsigned();
            $table->timestamp('start_day');
            $table->integer('sessions');
            $table->integer('teachers_id')->unsigned();
            $table->timestamps(); // Create fields: created_at, updated_at
            $table->softDeletes(); // Create columns: deleted_at
            $table->foreign('teachers_id')->references('id')->on('teachers'); // Set foreign key
            $table->foreign('products_id')->references('id')->on('products'); // Set foreign key
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('classes');
    }
}
