<?php

$admin = '_superadmin';

$permissions = [
    'categories' => [
        'all' => '_category-editor',
        'list' => '_category-list',
        'edit' => '_category-edit',
        'delete' => '_category-delete',
        'add' => '_category-add',
        'external' => '_external',
    ]
];

return [
    /*
    |--------------------------------------------------------------------------
    | Admin panel menu items
    |--------------------------------------------------------------------------
    |
    | Here you can edit the items to show in the admin menu(on top of the page)
    |
    */
    "list" => [


        //Dashboard page
        [
            "name" => "acl-admin.menu.dashboard",
            "route" => "dashboard",
            "link" => '/admin/users/dashboard',
            "permissions" => [$admin]
        ],

        /*
        |-----------------------------------------------------------------------
        | Admin permissions
        |-----------------------------------------------------------------------
        | 1. Users page
        | 2. Groups page
        | 3. Permissions page
        | 4. Categories
        |
        */


        //Users page
        [
            "name" => "acl-admin.menu.users",
            "route" => "users",
            "link" => '/admin/users',
            "permissions" => [$admin, '_user-editor', '_user-leader'],
            "skip_permissions" => ["users.selfprofile.edit",
                    "users.profile.edit",
                    "users.profile.addfield",
                    "users.profile.deletefield",
                    "users.profile.changeselfavatar",
            ]
        ],


        //Groups page
        [
            "name" => "acl-admin.menu.groups",
            "route" => "groups",
            "link" => '/admin/groups',
            "permissions" => [$admin, "_group-editor"]
        ],


        //Permissions page
        [
            "name" => "acl-admin.menu.permissions",
            "route" => "permissions",
            "link" => '/admin/permissions',
            "permissions" => [$admin, "_permission-editor"]
        ],

        //Contexts
        [
            'name' => 'category-admin.menus.top-menu-contexts',
            "route" => "contexts",
            "link" => '/admin/contexts',
            "permissions" => [$admin]
        ],

        //Categories
        [
            "route" => "category-admin.menus.top-menu",
            "link" => '/admin/categories',
            "permissions" => [$admin, '_user-editor']
        ],

        //Pexcel
        [
            "name" => "acl-admin.menu.pexcel",
            "route" => "pexcel",
            "link" => '/admin/pexcel',
            "permissions" => [$admin, "_permission-editor"]
        ],

        // Course
        [
            "name" => "acl-admin.menu.course",
            "route" => "course",
            "link" => '/admin/courses',
            "permissions" => [$admin]
        ],
        // Courses by teacher
        [
            "name" => "acl-admin.menu.course",
            "route" => "teacher.course",
            "link" => '/admin/courses/list',
            "permissions" => [$admin]
        ],

        // Helpdesk
        [
            "name" => "acl-admin.menu.helpdesk",
            "route" => "helpdesk",
            "link" => '/admin/helpdesk',
            "permissions" => [$admin]
        ],

        // Courses by teacher
        [
            "name" => "acl-admin.menu.helpdesk",
            "route" => "teacher.helpdesk",
            "link" => '/admin/helpdesk/list',
            "permissions" => ["_teacher"]
        ],
        // View request helpdesk
        [
            "name" => "Request",
            "route" => "student.helpdesk",
            "link" => '/admin/helpdesk/student',
            "permissions" => []
        ],
    ]
];
