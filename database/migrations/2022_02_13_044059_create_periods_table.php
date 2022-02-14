<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePeriodsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('periods', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('classes_id')->unsigned();
            $table->timestamp('time_in')->default(null)->nullable();
            $table->timestamp('time_out')->default(null)->nullable();
            $table->integer('order');
            $table->timestamps(); // Create fields: created_at, updated_at
            $table->softDeletes(); // Create columns: deleted_at
            // $table->foreign('classes_id')->references('id')->on('classes'); // Set foreign key
            // $table->unique('classes_id', 'order'); // Set unique key
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('periods');
    }
}
