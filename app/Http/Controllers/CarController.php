<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Car;

class CarController extends Controller
{
    public function index()
    {
        return view('car.create');
    }

    public function store(Request $request)
    
    {



        {
            $carData = $request->only(['name', 'model', 'year', 'carType']);
       
       
            if ($request->input('carType') === 'Gas') {
                // If the car type is gas, set fuelEfficiency in carData
                $carData['fuelEfficiency'] = $request->input('fuelEfficiency');
            } elseif ($request->input('carType') === 'Electric') {
                // If the car type is electric, set batteryCapacity in carData
                $carData['batteryCapacity'] = $request->input('batteryCapacity');
            }

            $car = Car::create($carData);
        
            return redirect('/cars')->with('success', 'Car saved successfully!');
        }




















        /*
        $car = new car;

       $carData = $request->only(['name', 'model', 'year', 'carType', 'batteryCapacity', 'fuelEfficiency']);
       
       $car = Car::create($carData);

        return redirect('/cars')->with('success', 'Car saved successfully!');
    */
    }

    public function showCars()
    {
        $cars = Car::all();
        return view('car.car_info', ['cars' => $cars]);
    }

}
