<?php

namespace App\Exports;

use App\Models\Client;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ClientsExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Client::select('first_name', 'last_name', 'ci', 'email', 'phone')->get();
    }

    public function headings(): array
    {
        return [
            'Nombre',
            'Apellido',
            'Cedula',
            'Email',
            'Celular'
        ];
    }
}
