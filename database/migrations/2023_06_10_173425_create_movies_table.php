<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('movies', function (Blueprint $table) {
            $table->unsignedBigInteger('id')->primary();
            $table->boolean('adult')->nullable();
            $table->string('backdrop_path', 100)->nullable();
            $table->string('title')->nullable();
            $table->string('name')->nullable();
            $table->string('original_language')->nullable();
            $table->string('original_title')->nullable();
            $table->text('overview')->nullable();
            $table->string('poster_path', 100)->nullable();
            $table->string('media_type')->nullable();
            $table->string('genre_ids')->nullable();
            $table->double('popularity', 8, 4)->nullable();
            $table->date('release_date')->nullable();
            $table->date('first_air_date')->nullable();
            $table->boolean('video')->nullable();
            $table->double('vote_average', 8, 4)->nullable();
            $table->decimal('vote_count')->nullable();
            $table->string('origin_country')->nullable();
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
        Schema::dropIfExists('movies');
    }
};
