<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Winner;

class WinnerController extends Controller
{

    public function index()
    {
        $winners = Winner::orderBy('created_at', 'DESC')
        ->with('client')
        ->get();
        
        return $winners;
    }

    public function store(Request $request)
    {
        // LAST WINNER
        $winner = Winner::orderBy('created_at', 'DESC')->with('client')->first();
        return $winner;
    }

}
