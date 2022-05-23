<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    use HasFactory;
    protected $table = "rating";
    protected $fillable = [
        "rate_id", "trans_id", "user_id", "ratee_id", "rate_number", "rate_message", "rate_date", "created_at", "updated_at", "is_product"
    ];
}
