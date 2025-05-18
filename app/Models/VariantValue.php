<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
// use Illuminate\Database\Eloquent\SoftDeletes;

class VariantValue extends Model
{
    use HasFactory;

    protected $table = 'variant_values';
    protected $fillable = ['variant_attribute_id', 'value'];

    public function attribute()
    {
        return $this->belongsTo(VariantAttribute::class, 'variant_attribute_id');
    }

    public function productVariantDetails()
    {
        return $this->hasMany(ProductVariantDetail::class, 'variant_value_id');
    }

    public function productVariants()
    {
        return $this->belongsToMany(ProductVariant::class, 'product_variant_details', 'variant_value_id', 'product_variant_id');
    }
}