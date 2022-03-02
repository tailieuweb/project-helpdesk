<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Foostart\Category\Helpers\FoostartMigration;

<<<<<<< HEAD:database/migrations/2021_01_03_102927_create_myservice_table.php
class CreateMyserviceTable extends FoostartMigration
{
    public function __construct() {
        $this->table = 'myservice';
        $this->prefix_column = 'service_';
=======
class CreateApproverTable extends FoostartMigration
{
    public function __construct() {
        $this->table = 'approver';
        $this->prefix_column = 'approver_';
>>>>>>> f9bc7997 (test Nhuần):vendor/foostart/package-helpdesk/database/migrations/2021_01_03_102927_create_approve_table.php
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
<<<<<<< HEAD:database/migrations/2021_01_03_102927_create_myservice_table.php
=======
            $table->integer('context_id')->comment('Context ID');
            $table->integer('context_id')->comment('Context ID');
            $table->integer('flow_id')->comment('Flow ID');

            $table->string($this->prefix_column . 'context_vale', 255)->comment('ContextValue');
>>>>>>> f9bc7997 (test Nhuần):vendor/foostart/package-helpdesk/database/migrations/2021_01_03_102927_create_approve_table.php
            $table->string($this->prefix_column . 'name', 255)->comment('Service name');
            $table->string($this->prefix_column . 'slug', 255)->comment('Service slug');
            $table->string($this->prefix_column . 'start_date', 255)->nullable()->comment('Service start date');
            $table->string($this->prefix_column . 'end_date', 255)->nullable()->comment('Service end date');

            $table->string($this->prefix_column . 'image', 255)->nullable()->comment('Service image');
            $table->text($this->prefix_column . 'description')->nullable()->comment('Service description');

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
