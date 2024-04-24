<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Client;


class RegisterTest extends TestCase
{
    /**
     * A basic feature test example.
     */
    public function test_register_promo_auto(): void
    {
        // Create a new post and save it to the database
        $post = Client::create([
            'first_name' => 'Miguel',
            'last_name' => 'Marquez',
            'ci' => 18043811,
            'email' => 'miguelxmarquez@gmail.com',
            'phone' => '3026486176',
            'habeas' => true,
            'department_id' => 1,
            'city_id' => 1
        ]);

        // Retrieve the post from the database and assert its existence
        $createdPost = Client::find($post->id);
        $this->assertNotNull($createdPost);
    }
}
