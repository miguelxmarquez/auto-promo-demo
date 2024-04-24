<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Department;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\DepartmentsExport;

class DepartmentController extends Controller
{
    public function index()
    {
        return Excel::download(new DepartmentsExport, 'department.xls');
    }

    public function store(){
        $departments = Department::select('id', 'name')->get();
        return $departments;
    }
}
