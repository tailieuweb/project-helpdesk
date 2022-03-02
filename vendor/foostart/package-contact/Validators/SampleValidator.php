<?php namespace Foostart\Contact\Validators;

use Foostart\Category\Library\Validators\FooValidator;
use Event;
use \LaravelAcl\Library\Validators\AbstractValidator;
use Foostart\Contact\Models\Contact;

use Illuminate\Support\MessageBag as MessageBag;

class SampleValidator extends FooValidator
{

    protected $obj_contact;

    public function __construct()
    {
        // add rules
        self::$rules = [
            'contact_title'       => ["required"],
            'contact_email'       => ["required"],
            'contact_message'       => ["required"],
            'contact_phone'       => ["required"],
        ];

        // set configs
        self::$configs = $this->loadConfigs();

        // model
        $this->obj_contact = new Contact();

        // language
        $this->lang_front = 'contact-front';
        $this->lang_admin = 'contact-admin';

        // event listening
        Event::listen('validating', function($input)
        {
            self::$messages = [
                'contact_title.required'        => trans($this->lang_admin.'.errors.required', ['attribute' => trans($this->lang_admin.'.fields.title')]),
                'contact_email.email'        => trans($this->lang_admin.'.errors.required', ['attribute' => trans($this->lang_admin.'.fields.email')]),
                'contact_message.message'        => trans($this->lang_admin.'.errors.required', ['attribute' => trans($this->lang_admin.'.fields.message')]),
                'contact_phone.message'        => trans($this->lang_admin.'.errors.required', ['attribute' => trans($this->lang_admin.'.fields.phone')]),
            ];
        });


    }

    /**
     *
     * @param ARRAY $input is form data
     * @return type
     */
    public function validateSample($input) {

        $flag = parent::validate($input);
        $this->errors = $this->errors ? $this->errors : new MessageBag();

        //Check length
        $_ln = self::$configs['length'];

        $params = [
            'title' => [
                'key' => 'contact_title',
                'label' => trans($this->lang_admin.'.fields.title'),
                'min' => $_ln['contact_title']['min'],
                'max' => $_ln['contact_title']['max'],
            ],
            'email' => [
                'key' => 'contact_email',
                'label' => trans($this->lang_admin.'.fields.email'),
                'min' => $_ln['contact_email']['min'],
                'max' => $_ln['contact_email']['max'],
            ],
            'message' => [
                'key' => 'contact_message',
                'label' => trans($this->lang_admin.'.fields.message'),
                'min' => $_ln['contact_message']['min'],
                'max' => $_ln['contact_message']['max'],
            ],
            'phone' => [
                'key' => 'contact_phone',
                'label' => trans($this->lang_admin.'.fields.phone'),
                'min' => $_ln['contact_phone']['min'],
                'max' => $_ln['contact_phone']['max'],
            ],
        ];

        $flag = $this->isValidLength($input['contact_title'], $params['title']) ? $flag : FALSE;
        $flag = $this->isValidLength($input['contact_email'], $params['email']) ? $flag : FALSE;
        $flag = $this->isValidLength($input['contact_message'], $params['message']) ? $flag : FALSE;
        $flag = $this->isValidLength($input['contact_phone'], $params['phone']) ? $flag : FALSE;
        return $flag;
    }


    /**
     * Load configuration
     * @return ARRAY $configs list of configurations
     */
    public function loadConfigs(){

        $configs = config('package-contact');
        return $configs;
    }

}