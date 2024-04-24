<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Winner extends Model
{
    use HasFactory;

    protected $casts = [
        'created_at'  => 'date:Y-m-d H:i:s',
    ];

    protected $fillable = [
        'client_id',
    ];

    public function client()
    {
        return $this->belongsTo(Client::class, 'client_id');
    }
}
