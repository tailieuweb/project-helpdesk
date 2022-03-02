<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Foostart\Category\Helpers\FoostartMigration;

class CreateApproveTable extends FoostartMigration
{
    public function __construct() {
        $this->table = 'approve';
        $this->prefix_column = 'approve_';
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
            $table->integer('flow_id')->comment('Flow ID');

            // Other attributes
            $table->integer('context_id')->comment('Context ID');


            $table->string($this->prefix_column . 'context_vale', 255)->comment('ContextValue');
            $table->string($this->prefix_column . 'level', 255)->comment('Level');
            $table->string($this->prefix_column . 'start_date', 255)->nullable()->comment('Service start date');
            $table->string($this->prefix_column . 'end_date', 255)->nullable()->comment('Service end date');

            $table->text($this->prefix_column . 'level')->nullable()->comment('Level');

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
