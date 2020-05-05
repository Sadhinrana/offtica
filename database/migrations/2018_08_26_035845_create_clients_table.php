<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->increments('id');
            $table->string('clientName')->nullable();
            $table->string('address')->nullable();
            $table->tinyInteger('city')->nullable();
            $table->tinyInteger('country')->nullable();
            $table->tinyInteger('division')->nullable();
            $table->string('zipCode')->nullable();
            $table->string('phone')->nullable();
            $table->string('office_phone')->nullable();
            $table->string('company');
            $table->string('email');
            $table->string('office_email')->nullable();
            $table->string('password');
            $table->string('token')->nullable();
            $table->boolean('status')->nullable()->default('0');
            $table->unsignedInteger('promotional_reward_points')->nullable()->default('0');
            $table->unsignedInteger('non_promotional_reward_points')->nullable()->default('0');
            $table->unsignedInteger('membership_type_id');
            $table->foreign('membership_type_id')->references('id')->on('membership_types')->onDelete('cascade');
            $table->unsignedInteger('salesman_id')->nullable();
            $table->foreign('salesman_id')->references('id')->on('salesmen')->onDelete('cascade');    
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
        Schema::dropIfExists('clients');
    }
}
