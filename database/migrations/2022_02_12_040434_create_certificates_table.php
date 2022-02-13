<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCertificatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('certificates', function (Blueprint $table) {
            $table->increments('id');
            $table->char('name', 50);
            $table->mediumText('description');
            $table->char('photo', 255)->default(null)->nullable();
            $table->timestamps(); // Create fields: created_at, updated_at
            $table->softDeletes(); // Create columns: deleted_at
            // $table->primary('id'); // Set primary key
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('certificates');
    }
}
