<?php

return [

    /*
    |-----------------------------------------------------------------------
    | MAIN MENU
    |-----------------------------------------------------------------------
    | Top menu
    |
    */
    'menus' => [
        'top-menu' => 'Post'
    ],


    /*
    |-----------------------------------------------------------------------
    | SIDEBAR
    |-----------------------------------------------------------------------
    | Left side bar
    |
    |
    |
    */
    'sidebar' => [
        'list' => 'Items',
        'add' => 'Add new',
        'trash' => 'Trash',
        'config' => 'Configurations',
        'lang' => 'Languages',
        'category' => 'Categories',
        'crawl' => 'Crawl news',
    ],


    /*
    |-----------------------------------------------------------------------
    | Table column
    |-----------------------------------------------------------------------
    | The list of columns in table
    |
    */
    'columns' => [
        'order' => '#',
        'name' => 'Post name',
        'operations' => 'Operations',
        'updated_at' => 'Updated at',
        'filename' => 'File name',
        'status' => 'Status',
    ],


    /*
    |-----------------------------------------------------------------------
    | Pages
    |-----------------------------------------------------------------------
    | Pages
    |
    */
    'pages' => [
        'title-list' => 'Danh sách bài viết',
        'title-list-search' => 'Search results',
        'title-edit' => 'Chỉnh sửa bài viết',
        'title-add' => 'Thêm mới',
        'title-delete' => 'Xóa bài viết',
        'title-config' => 'Quản lý cấu hình',
        'title-lang' => 'Quản lý ngôn ngữ',
    ],


    /*
    |-----------------------------------------------------------------------
    | Button
    |-----------------------------------------------------------------------
    | The list of buttons
    |
    */
    'buttons' => [
        'search' => 'Tìm kiếm',
        'reset' => 'Resest',
        'add' => 'Thêm mới',
        'save' => 'Lưu',
        'delete' => 'Xóa',
        'delete-in-trash' => 'Xóa tạm thời',
        'delete-forever' => 'Xóa vĩnh viễn',
    ],


    /*
    |-----------------------------------------------------------------------
    | Hint
    |-----------------------------------------------------------------------
    | The list of hint
    |
    */
    'hint' => [
        'delete-forever' => 'Xóa vĩnh viễn',
        'delete-in-trash' => 'Xóa tạm thời',
    ],


    /*
    |-----------------------------------------------------------------------
    | Form
    |-----------------------------------------------------------------------
    | The list of elements in form
    |
    |
    */
    'form' => [
        'keyword' => 'Từ khóa',
        'sorting' => 'Sắp xếp',
        'no-selected' => 'No selected',
        'status' => 'Trạng thái',
    ],


    /*
    |-----------------------------------------------------------------------
    | Descriptions
    |-----------------------------------------------------------------------
    | Descriptions
    |
    */
    'descriptions' => [
        'form' => 'Post form',
        'update' => 'Update post',
        'name' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
        'slug' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
        'category' => 'Click <a href=":href">here</a> to manage list of categories by token.',
        'slideshow' => 'Click <a href=":href">here</a> to manage list of slideshow',
        'overview' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
        'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
        'image' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
        'files' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
        'status' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
        'list' => 'List of items',
        'counters' => 'There are <b>:number</b> items',
        'counter' => 'There is <b>:number</b> item',
        'not-found' => 'Not found items',
        'config' => 'List of configurations',
        'lang' => 'List of languages',
    ],


    /*
    |-----------------------------------------------------------------------
    | Error
    |-----------------------------------------------------------------------
    | Show error message
    |
    |
    |
    */
    'errors' => [
        'required' => ':attribute is required',
        'required_length' => '<b> :attribute </b> allows from: <b>:minlength</b> to <b>:maxlength</b> characters.',
        'required_min_length' => '<b> :attribute </b> allows from: <b>:minlength</b> characters.',
    ],


    /*
    |-----------------------------------------------------------------------
    | FIELDS
    |-----------------------------------------------------------------------
    | Column name in table
    |
    |
    |
    */
    'fields' => [
        'id' => 'ID',
        'name' => 'Tiêu đề bài viết',
        'description' => 'Chi tiết bài viết',
        'overview' => 'Mô tả ngắn',
        'slug' => 'Slug',
        'updated_at' => 'Lần cuối cập nhật'
    ],


    /*
    |-----------------------------------------------------------------------
    | LABLES
    |-----------------------------------------------------------------------
    | The lables of element in form
    |
    |
    |
    */
    'labels' => [
        'name' => 'Tiêu đề',
        'slug' => 'Slug',
        'overview' => 'Tóm lược',
        'description' => 'Nội dung bài viết',
        'image' => 'Hình ảnh',
        'files' => 'Đính kèm file',
        'category' => 'Danh mục',
        'slideshow' => 'Slideshow',
        'title-search' => 'Tìm kiếm bài viết',
        'title-backup' => 'Backups',
        'config' => 'Configurations',
        'keyword' => 'Từ khóa',
        'sorting' => 'Sắp xếp',
        'no-selected' => 'No selected',
        'status' => 'Trạng thái',
        'delete' => 'Xóa',
    ],


    /*
    |-----------------------------------------------------------------------
    | TABS
    |-----------------------------------------------------------------------
    | The name of tab
    |
    |
    |
      */
    'tabs' => [
        'menu_1' => 'Cơ bản',
        'menu_2' => 'Mở rộng',
        'menu_3' => 'Khác',
        'menu_4' => 'Menu 4',
        'menu_5' => 'Menu 5',
        'menu_6' => 'Menu 6',
        'menu_7' => 'Menu 7',
        'menu_8' => 'Menu 8',
        'menu_9' => 'Menu 9',
        'menu_9' => 'Menu 9',
        'guide' => 'Guide',
        'other' => 'Other',
        'basic' => 'Basic',
        'advance' => 'Advance',
    ],


    /*
    |-----------------------------------------------------------------------
    | HEADING
    |-----------------------------------------------------------------------
    |
    |
    |
    |
    */
    'headings' => [
        'form-search' => 'Tìm kiếm bài viết',
        'list' => 'Danh sách bài viết',
        'search' => 'Kết quả tìm kiếm',
    ],


    /*
    |-----------------------------------------------------------------------
    | CONFIRMS
    |-----------------------------------------------------------------------
    | List of messages for confirm
    |
    |
    |
    */
    'confirms' => [
        'delete' => 'Bạn có chắc bạn muốn xóa bài viết này?',
    ],


    /*
    |-----------------------------------------------------------------------
    | ACTIONS
    |-----------------------------------------------------------------------
    |
    |
    |
    |
    */
    'actions' => [
        'add-ok' => 'Thêm bài viết mới thành công',
        'add-error' => 'Thêm bài viết mới thất bại',
        'edit-ok' => 'Cập nhật bài viết thành công',
        'edit-error' => 'Cập nhật bài viết thất bại',
        'delete-ok' => 'Xóa bài viết thành công',
        'delete-error' => 'Xóa bài viết thất bại',
    ],
];
