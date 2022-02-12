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
        Schema::create('users_', function (Blueprint $table) {
            $table->increments('id');
            $table->char('name', 50);
            $table->char('email', 50);
            $table->char('password', 60);
            $table->char('address', 255);
            $table->char('phone', 11);
            $table->char('photo', 255);
            $table->char('remember_token', 255);
            $table->tinyInteger('role');
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
        Schema::dropIfExists('users_');
    }
}
