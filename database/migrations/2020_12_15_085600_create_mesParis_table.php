<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class FichierMigra extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mesParis', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_user');
            $table->foreignId('id_pari');

            $table->string('monVote');
            $table->float('maMise');
            $table->boolean('monResultat');
            
            $table->timestamps();

            $table->foreign('id_user')->references('id')->on('user');
            $table->foreign('id_pari')->references('id')->on('pari');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mesParis');
    }
}
