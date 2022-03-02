<?php

use Illuminate\Session\TokenMismatchException;

/**
 * ADMINISTRATOR
 */
Route::group(['middleware' => ['web']], function () {


    /**
     * Common
     */
    Route::group(['middleware' => ['admin_logged', 'can_see', 'in_context'],
        'namespace' => 'Foostart\Helpdesk\Controllers\Admin',
    ], function () {

        /**
         * configs
         */
        Route::get('admin/helpdesk/config', [
            'as' => 'Helpdesk.config',
            'uses' => 'HelpdeskAdminController@config'
        ]);

        Route::post('admin/helpdesk/config', [
            'as' => 'helpdesk.config',
            'uses' => 'HelpdeskAdminController@config'
        ]);

        /**
         * language
         */
        Route::get('admin/helpdesk/lang', [
            'as' => 'helpdesk.lang',
            'uses' => 'HelpdeskAdminController@lang'
        ]);

        Route::post('admin/helpdesk/lang', [
            'as' => 'helpdesk.lang',
            'uses' => 'HelpdeskAdminController@lang'
        ]);

    });

    /****************************************************************************
     * Helpdesk
     */
    Route::group(['middleware' => ['admin_logged', 'can_see', 'in_context'],
        'namespace' => 'Foostart\Helpdesk\Controllers\Admin',
    ], function () {

        /*
          |-----------------------------------------------------------------------
          | Manage requests
          |-----------------------------------------------------------------------
          | 1. List of requests
          | 2. Edit helpdesk
          | 3. Delete helpdesk
          | 4. Add new helpdesk
          |
        */

        /**
         * list
         */
        Route::get('admin/helpdesk', [
            'as' => 'helpdesk',
            'uses' => 'HelpdeskAdminController@index'
        ]);

        /**
         * edit-add
         */
        Route::get('admin/helpdesk/edit', [
            'as' => 'helpdesk.edit',
            'uses' => 'HelpdeskAdminController@edit'
        ]);

        /**
         * copy
         */
        Route::get('admin/helpdesk/copy', [
            'as' => 'helpdesk.copy',
            'uses' => 'HelpdeskAdminController@copy'
        ]);

        /**
         * post
         */
        Route::post('admin/helpdesk/edit', [
            'as' => 'helpdesk.post',
            'uses' => 'HelpdeskAdminController@post'
        ]);

        /**
         * delete
         */
        Route::get('admin/helpdesk/delete', [
            'as' => 'helpdesk.delete',
            'uses' => 'HelpdeskAdminController@delete'
        ]);

        /**
         * restore
         */
        Route::get('admin/helpdesk/restore', [
            'as' => 'helpdesk.restore',
            'uses' => 'HelpdeskAdminController@restore'
        ]);

        /**
         * trash
         */
        Route::get('admin/helpdesk/trash', [
            'as' => 'helpdesk.trash',
            'uses' => 'HelpdeskAdminController@trash'
        ]);

        /**
         * search
         */
        Route::get('admin/helpdesk/search', [
            'as' => 'helpdesk.search',
            'uses' => 'HelpdeskAdminController@search'
        ]);

        /**
         * list of courses by teacher
         */
        Route::get('admin/helpdesk/list', [
            'as' => 'teacher.helpdesk',
            'uses' => 'HelpDeskAdminController@helpdeskByTeacher'
        ]);

        /**
         * View list of students on course by teacher
         */
        Route::get('admin/helpdesk/teacher/view', [
            'as' => 'teacher.helpdesk.view',
            'uses' => 'HelpDeskAdminController@viewCourseByTeacher'
        ]);

        /******************************************************************************
         * STUDENT
         */
        /**
         * View list of students on course by teacher
         */
        Route::get('admin/helpdesk/student', [
            'as' => 'student.helpdesk',
            'uses' => 'HelpDeskAdminController@viewRequestByStudent'
        ]);
        /**
         * edit-add
         */
        Route::get('admin/helpdesk/student/edit', [
            'as' => 'student.helpdesk.edit',
            'uses' => 'HelpdeskAdminController@editByStudent'
        ]);
        /**
         * post
         */
        Route::post('admin/helpdesk/student/edit', [
            'as' => 'student.helpdesk.post',
            'uses' => 'HelpdeskAdminController@postByStudent'
        ]);
        /**
         * delete
         */
        Route::get('admin/helpdesk/student/delete', [
            'as' => 'student.helpdesk.delete',
            'uses' => 'HelpdeskAdminController@deleteByStudent'
        ]);
    });
});
