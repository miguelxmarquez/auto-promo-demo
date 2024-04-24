<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    use HasFactory;

    protected $fillable = [
        'first_name',
        'last_name',
        'ci',
        'email',
        'phone',
        'habeas',
        'department_id',
        'city_id',
    ];

    public function department()
    {
        return $this->belongsTo(Department::class, 'department_id');
    }

    public function city()
    {
        return $this->belongsTo(City::class, 'city_id');
    }
}
