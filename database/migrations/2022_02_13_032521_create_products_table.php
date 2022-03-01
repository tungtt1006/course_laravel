<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->char('name', 50);
            $table->integer('categories_id')->unsigned();
            $table->integer('certificates_id')->unsigned();
            $table->mediumText('description');
            $table->text('content');
            $table->tinyInteger('display');
            $table->tinyInteger('hot');
            $table->timestamp('time_start')->default(null)->nullable();
            $table->timestamp('time_end')->default(null)->nullable();
            $table->char('sessions', 50);
            $table->char('photo', 255)->default(null)->nullable();
            $table->integer('price');
            $table->timestamps(); // Create fields: created_at, updated_at
            $table->softDeletes(); // Create columns: deleted_at
            // $table->foreign('categories_id')->references('id')->on('categories'); // Set foreign key
            // $table->foreign('certificates_id')->references('id')->on('certificates'); // Set foreign key
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
