<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Department;
use App\Models\City;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\CitiesExport;

class CityController extends Controller
{

    public function index(){
        return Excel::download(new CitiesExport, 'cities.xls');
    }

    public function store(Request $request)
    {
        $request->validate([
            'id' => 'required|integer'
        ]);

        $cities = City::select('id', 'name')->where('department_id', $request->id)->get();
        return $cities;
    }
}
