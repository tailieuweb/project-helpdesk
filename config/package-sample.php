<?php
return [

    //Number of worlds
    'length' => [
        'sample_name' => [
            'min' => 5,
            'max' => 255,
        ],
        'sample_description' => [
            'min' => 5,
            'max' => 0,//unlimit
        ],
        'sample_status' => [
            'min' => 255,
            'max' => 0,//unlimit
        ],
        'sample_title' => [
            'min' => 10,
            'max' => 255,
        ],
        'sample_email' => [
            'min' => 10,
            'max' => 255,
        ],
        'sample_message' => [
            'min' => 10,
            'max' => 255,
        ],
    ],
    'per_page' => 1,

    /*
    |-----------------------------------------------------------------------
    | ENVIRONMENT
    |-----------------------------------------------------------------------
    | 0: Development
    | 1: Production
    |
    */
    'env' => 0,
    'load_from' => 'package-sample::',

    /*
    |-----------------------------------------------------------------------
    | LANGUAGES
    |-----------------------------------------------------------------------
    | vi
    | en
    |
    */
    'langs' => [
        'en' => 'English',
        'vi' => 'Vietnam'
    ],


    /*
    |-----------------------------------------------------------------------
    | Permissions
    |-----------------------------------------------------------------------
    | List
    | Edit
    | Add
    | Select
    |
    */
    'permissions' => [
        'list_all' => ['_superadmin', '_user-editor'],
        'list_by_context' => [],
        'edit' => ['_superadmin', '_user-editor'],
        'add' => ['_superadmin', '_user-editor'],
        'delete' => ['_superadmin', '_user-editor'],
    ],




     /*
      |--------------------------------------------------------------------------
      | ITEM STATUS
      |--------------------------------------------------------------------------
      | @public = 99
      | @in_trash = 55 delete from list
      | @draft = 11 auto save
      | @unpublish = 33
     */
    'status' => [
        'list' => [
            99 => 'Publish',
            33 => 'Unpublish',
            55 => 'In trash',
            11 => 'Draft',
        ],
        'color' => [
            11 => '#ef4832',
            33 => '#000000',
            55 => '#a8aac2',
            99 => '#5bc0de'
        ]
        ],
];
