<?php

namespace App\Listeners;

use App\Events\OrderRegisterd;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\Classes;
use Carbon\Carbon;

class CreateNewClass
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
        if ($class->users()->count() == 15
            && Classes::where('product_id', $class->product->id)->where('status', 'arrange')->count() == 1
        ) {
            $class->update(['status' => 'finish']);
            Classes::create([
                'product_id' => $class->product->id,
                'teacher_id' => $class->teacher->id,
                'sessions' => 30,
                'start_day' => Carbon::now()->addMonths()->format('Y-m-d'),
                'time_in' => '18:00:00',
                'time_out' => '21:00:00',
                'days_of_week' => '2/4/6',
                'number' => $class->number + 1,
            ]);
        }
    }
}
