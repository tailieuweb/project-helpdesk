<?php


use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Foostart\Category\Helpers\FoostartMigration;

class CreateDetailApproveTable extends FoostartMigration
{
    public function __construct() {
        $this->table = 'detail_approve';
        $this->prefix_column = 'detail_approve_';
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
            $table->integer('flow_id')->comment('User ID');

            // Other attributes
           $table->integer('context_id')->comment('Context ID');
           $table->string($this->prefix_column . 'context_vale', 255)->comment('ContextValue');
            $table->string($this->prefix_column . 'level', 255)->comment('Level');
            $table->string($this->prefix_column . 'date_approve', 255)->nullable()->comment('Date Approve');
            $table->text($this->prefix_column . 'file')->nullable()->comment('File Update');
            $table->integer($this->prefix_column . 'status')->nullable()->comment('Status');

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
