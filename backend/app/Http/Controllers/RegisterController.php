<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\RegisterRequest;
use App\Models\Client;
use App\Models\Winner;

class RegisterController extends Controller
{

    public function index()
    {
        return Client::all();
    }

    // public function store(Request $request)
    public function store(RegisterRequest $request)
    {
        $client = Client::create($request->all());
        $count = Client::count();

        if ($count != 5) {
            return $client;
        } elseif ($count == 5) {
            // WINNER SECTION
            $winner = Client::inRandomOrder()->first();
            $response = Winner::create([
                'client_id' => $winner->id
            ]);

            $winner = Winner::orderby('created_at', 'DESC')
                ->with('client')
                ->first();
            return $winner;
        } else {
            return 'El concurso ha terminado';
        }
    }
}
