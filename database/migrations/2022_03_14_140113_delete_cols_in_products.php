<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DeleteColsInProducts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropColumn('day_start');
            $table->dropColumn('day_end');
            $table->dropColumn('time_start');
            $table->dropColumn('time_end');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->date('day_start')->default(now());
            $table->date('day_end')->default(now());
            $table->timestamp('time_start')->default(null)->nullable();
            $table->timestamp('time_end')->default(null)->nullable();
        });
    }
}
