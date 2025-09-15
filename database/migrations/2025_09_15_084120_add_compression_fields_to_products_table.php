<?php

use App\Models\TinifyModel;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCompressionFieldsToProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            // Compression status and metadata
            $table->string('is_compressed')->nullable()->default('no');
            $table->string('compress_status')->nullable(); // pending, completed, failed
            $table->text('compress_status_message')->nullable();
            
            // Size tracking
            $table->decimal('original_size', 15, 2)->nullable()->default(0);
            $table->decimal('compressed_size', 15, 2)->nullable()->default(0);
            $table->decimal('compression_ratio', 8, 4)->nullable();
            
            // Compression metadata
            $table->string('compression_method')->nullable();
            $table->text('original_image_url')->nullable();
            $table->text('compressed_image_url')->nullable();
            $table->unsignedBigInteger('tinify_model_id')->nullable();
            
            // Timestamps for compression tracking
            $table->timestamp('compression_started_at')->nullable();
            $table->timestamp('compression_completed_at')->nullable();
            
            // Foreign key to tinify_models
            $table->foreignIdFor(TinifyModel::class)->nullable();
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
            $table->dropForeign(['tinify_model_id']);
            $table->dropColumn([
                'is_compressed',
                'compress_status',
                'compress_status_message',
                'original_size',
                'compressed_size',
                'compression_ratio',
                'compression_method',
                'original_image_url',
                'compressed_image_url',
                'tinify_model_id',
                'compression_started_at',
                'compression_completed_at'
            ]);
        });
    }
}
