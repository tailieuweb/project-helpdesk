<?php
namespace Foostart\Contact\Controllers\Admin;
 
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Foostart\Contact\Mail\ContactMail;


class MailController extends Controller
{
    public function send()
    {
        $data = [
            'confirm' => 'confirm',
            'author' => 'ADMIN',
            'address' => 'hoaiphuong2527@gmail.com',
            'contents' => 'Hello'
            ];

            Mail::send(['view' => 'mail'], $data, function($message) use ($data){
                $message->to($data['address'])->cc($data['address'])
                    ->subject('Mail sent from '.$data['author'].'.')
                    ->setBody($data['contents']);
                $message->from('hoaiphuong2527@gmail.com');
            });
    
    }
}