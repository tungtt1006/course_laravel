<?php

namespace App\Listeners;

use App\Events\ClassCreated;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\NewClassNotice;
use Illuminate\Support\Facades\Mail;
use App\Mail\ClassCreated as ClassMailable;

class RemindUsers
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
     * @param  ClassCreated  $event
     * @return void
     */
    public function handle(ClassCreated $event)
    {
        $notices = NewClassNotice::with('user')->where('product_id', $event->theClass->product_id)
            ->where('status', 0)
            ->get();
        foreach ($notices as $recipient) {
            Mail::to($recipient->user->email)->send(new ClassMailable($event->theClass));
        }
        NewClassNotice::whereIn('id', $notices->pluck('id'))->where('status', 0)->update([
            'status' => 1,
        ]);
    }
}
