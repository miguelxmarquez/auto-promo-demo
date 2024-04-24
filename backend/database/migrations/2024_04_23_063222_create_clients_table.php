<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->id();
            $table->string('first_name');
            $table->string('last_name');
            $table->integer('ci')->unique();
            $table->string('email')->unique();
            $table->bigInteger('phone');
            $table->boolean('habeas');

            $table->unsignedBigInteger('department_id')->unsigned();
            $table->unsignedBigInteger('city_id')->unsigned();
            $table->timestamps();
            $table->foreign('department_id')->references('id')->on('departments')->onDelete('cascade');
            $table->foreign('city_id')->references('id')->on('cities')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('clients');
    }
};
