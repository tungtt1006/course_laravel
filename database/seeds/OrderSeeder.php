<?php

use Illuminate\Database\Seeder;
use App\Models\User;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = User::limit(15)->get();
        foreach ($users as $user) {
            factory(App\Models\Order::class, 1)->create(['user_id' => $user->id]);
        }

        /**
         * Seeder for testing event OrderRegisterd
         */
        // $users = User::limit(14)->get();
        // foreach ($users as $user) {
        //     factory(App\Models\Order::class, 1)->create([
        //         'user_id' => $user->id,
        //         'class_id' => 2
        //     ]);
        // }
    }
}
