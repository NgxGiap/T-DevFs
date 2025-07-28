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
        // Thêm các trường snapshot cho order_items
        Schema::table('order_items', function (Blueprint $table) {
            // Thêm các trường snapshot sản phẩm
            $table->string('product_name_snapshot')->nullable()->after('total_price');
            $table->decimal('base_price_snapshot', 10, 2)->nullable()->after('product_name_snapshot');
            
            // Thêm các trường snapshot biến thể
            $table->string('variant_name_snapshot')->nullable()->after('base_price_snapshot');
            $table->json('variant_attributes_snapshot')->nullable()->after('variant_name_snapshot');
            $table->decimal('variant_price_snapshot', 10, 2)->nullable()->after('variant_attributes_snapshot');
            
            // Thêm các trường snapshot combo
            $table->string('combo_name_snapshot')->nullable()->after('variant_price_snapshot');
            $table->json('combo_items_snapshot')->nullable()->after('combo_name_snapshot');
            $table->decimal('combo_price_snapshot', 10, 2)->nullable()->after('combo_items_snapshot');
        });
        
        // Thêm snapshot địa chỉ vào bảng orders
        Schema::table('orders', function (Blueprint $table) {
            // Thêm các trường snapshot địa chỉ giao hàng
            $table->string('delivery_address_line_snapshot')->nullable()->after('address_id');
            $table->string('delivery_ward_snapshot')->nullable()->after('delivery_address_line_snapshot');
            $table->string('delivery_district_snapshot')->nullable()->after('delivery_ward_snapshot');
            $table->string('delivery_province_snapshot')->nullable()->after('delivery_district_snapshot');
            $table->string('delivery_phone_snapshot')->nullable()->after('delivery_province_snapshot');
            $table->string('delivery_recipient_name_snapshot')->nullable()->after('delivery_phone_snapshot');
        });

        // Thêm các trường snapshot cho order_item_toppings
        Schema::table('order_item_toppings', function (Blueprint $table) {
            // Thêm các trường snapshot topping
            $table->string('topping_name_snapshot')->nullable()->after('price');
            $table->decimal('topping_unit_price_snapshot', 10, 2)->nullable()->after('topping_name_snapshot');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Xóa các trường snapshot từ bảng order_items
        Schema::table('order_items', function (Blueprint $table) {
            $table->dropColumn([
                'product_name_snapshot',
                'base_price_snapshot',
                'variant_name_snapshot',
                'variant_attributes_snapshot',
                'variant_price_snapshot',
                'combo_name_snapshot',
                'combo_items_snapshot',
                'combo_price_snapshot'
            ]);
        });
        
        // Xóa các trường snapshot từ bảng orders
        Schema::table('orders', function (Blueprint $table) {
            $table->dropColumn([
                'delivery_address_line_snapshot',
                'delivery_ward_snapshot',
                'delivery_district_snapshot',
                'delivery_province_snapshot',
                'delivery_phone_snapshot',
                'delivery_recipient_name_snapshot'
            ]);
        });

        // Xóa các trường snapshot từ bảng order_item_toppings
        Schema::table('order_item_toppings', function (Blueprint $table) {
            $table->dropColumn([
                'topping_name_snapshot',
                'topping_unit_price_snapshot'
            ]);
        });
    }
};
