<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->char('name', 50);
            $table->char('email', 50)->unique();
            $table->char('password', 20);
            $table->char('address', 255);
            $table->char('phone', 11);
            $table->tinyInteger('gender')->default(0);
            $table->tinyInteger('role')->default(0);
            $table->char('photo', 255)->default(null)->nullable();
            $table->char('remember_token', 255)->default(null)->nullable();
            $table->softDeletes(); // Create columns: deleted_at
            $table->timestamps(); // Create fields: created_at, updated_at
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
        Schema::dropIfExists('users');
    }
}
