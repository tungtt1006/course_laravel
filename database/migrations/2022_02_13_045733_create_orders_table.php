<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('classes_id')->unsigned();
            $table->integer('users_id')->unsigned();
            $table->integer('price');
            $table->tinyInteger('status');
            $table->timestamps(); // Create fields: created_at, updated_at
            $table->softDeletes(); // Create columns: deleted_at
            $table->foreign('classes_id')->references('id')->on('classes'); // Set foreign key
            $table->foreign('users_id')->references('id')->on('users'); // Set foreign key
            $table->unique('classes_id', 'users_id'); // Set unique key
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
