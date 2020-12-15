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
        Schema::create('pari', function (Blueprint $table) {
            $table->id();
            
            $table->string('title');
            $table->string('category');

            $table->string('choice1');
            $table->string('choice2');
            $table->string('choice3');

            $table->float('coteChoice1');
            $table->float('coteChoice2');
            $table->float('coteChoice3');
            $table->boolean('isCoteAuto');

            $table->date('dateMatch');
            $table->date('dateStartPari');
            $table->date('dateEndPari');

            $table->float('gainBanque');
            $table->date('perteBanque');

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
        Schema::dropIfExists('pari');
    }
}
