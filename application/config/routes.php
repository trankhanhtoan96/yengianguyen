<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
|
| $route['(:any)-(:num)-cat\.html\/page\/(:num)']='blog/index/$2/$3';
*/


$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
/*-------------------------------------------------------------------*/
// $route['default_controller'] = 'site';
// $route['tra-cuu-diem-thi-tin-hoc-van-phong\.html'] = 'site/tra_cuu_diem_thi_tin_hoc_van_phong';
// $route['(:any)-(:num)-blogcat\.html\/p\/(:num)'] = 'site/blog_category/$2/$3';
// $route['(:any)-(:num)-blogcat\.html\/p'] = 'site/blog_category/$2';
// $route['(:any)-(:num)-blogcat\.html'] = 'site/blog_category/$2';
// $route['(:any)-(:num)\.html'] = 'site/blog/$2';
/*----------------------------------------------------------------------*/
// $route['default_controller'] = 'giarehon';
// $route['search.html'] = 'giarehon/search';
// $route['lich-su-gia.html'] = 'giarehon/lichsugia';
/*------------------------------------------------------------------------*/
$route['default_controller'] = 'yengianguyen';
$route['cong-dung-cua-yen-xao.html'] = 'yengianguyen/congdung';
$route['khuyen-mai.html'] = 'yengianguyen/khuyenmai';
$route['lien-he.html'] = 'yengianguyen/lienhe';
$route['(:any)-(:num)-procat\.html'] = 'yengianguyen/danhsachsanpham/$2';
$route['(:any)-(:num)-pro\.html'] = 'yengianguyen/sanpham/$2';
$route['(:any)-(:num)\.html'] = 'yengianguyen/camnang/$2';