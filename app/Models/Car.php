<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    protected $fillable = ['name', 'model', 'year', 'carType', 'batteryCapacity', 'fuelEfficiency'];

    public function displayCarInfo()
    {
        $info = "{$this->year} {$this->name} {$this->model}";
        if ($this->carType === 'Electric') {
            $info .= "\nBattery Capacity: {$this->batteryCapacity} kWh";
        } else {
            $info .= "\nFuel Efficiency: {$this->fuelEfficiency} MPG";
        }
        return $info;
    }
}
