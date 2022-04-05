<?php

namespace App\Listeners;

use App\Events\OrderRegisterd;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class UpdateStatuClass
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  OrderRegisterd  $event
     * @return void
     */
    public function handle(OrderRegisterd $event)
    {
        $class = $event->order->class;
        $usersNumber = $class->users()->count();
        if ($usersNumber == 15) {
            $class->update([
                'status' => 'learning'
            ]);
        }
    }
}
