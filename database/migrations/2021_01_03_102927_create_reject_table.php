<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Foostart\Category\Helpers\FoostartMigration;

class CreateRejectTable extends FoostartMigration
{
    public function __construct() {
        $this->table = 'reject';
        $this->prefix_column = 'reject_';
    }
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists($this->table);
        Schema::create($this->table, function (Blueprint $table) {

            $table->increments($this->prefix_column . 'id')->comment('Primary key');

            // Relation
            $table->integer('approve_id')->comment('Approve ID');
            $table->integer('context_id')->comment('User ID');


            // Other attributes

            $table->string($this->prefix_column . 'note', 255)->comment('Note');
            $table->string($this->prefix_column . 'File', 255)->comment('File Reject');
            $table->string($this->prefix_column . 'start_date', 255)->nullable()->comment('Reject start date');
            $table->string($this->prefix_column . 'end_date', 255)->nullable()->comment('Reject end date');



            //Set common columns
            $this->setCommonColumns($table);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists($this->table);
    }
}
