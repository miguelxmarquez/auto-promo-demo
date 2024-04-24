<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ClientsExport;

class ClientController extends Controller
{
    public function index(){
        return Excel::download(new ClientsExport, 'clientes.xls');
    }
}
