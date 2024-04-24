<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'first_name' => ['required', 'string', 'min:3', 'max:25'],
            'last_name' => ['required', 'string', 'min:3', 'max:25'],
            'ci' => ['required', 'integer'],
            'phone' => ['required', 'integer'],
            'email' => ['required', 'string', 'email', 'max:100'],
            'habeas' => ['required', 'boolean'],
            'department_id' => ['required', 'integer'],
            'city_id' => ['required', 'integer'],
        ];
    }
}
