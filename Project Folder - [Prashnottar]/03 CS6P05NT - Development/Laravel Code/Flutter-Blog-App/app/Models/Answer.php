<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    use HasFactory;

    protected $fillable = [
        'answer',
        'user_id',
        'post_id'
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }
}
