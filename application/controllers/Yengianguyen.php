<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Yengianguyen extends CI_Controller
{
	function index()
	{               
		$data['SEO_title'] = $this->setting_model->tkt_get('set_pagetitle');
		$data['SEO_keyword'] = $this->setting_model->tkt_get('set_pagekeyword');
		$data['SEO_descriptiton'] = $this->setting_model->tkt_get('set_pagedescriptiton');
		$data['SEO_image'] = $this->setting_model->tkt_get('logo');
		$data['_varibles']['slides'] = $this->slide_model->tkt_get_list();
		$data['_varibles']['products'] = $this->product_model->tkt_get_list();
		$data['_content'] = 'yengianguyen/home';
		$this->load->view('yengianguyen/index',$data);
	}

	function congdung()
	{
		$data['SEO_title'] = "Công dụng của yến sào - Yến Gia Nguyễn";
		$data['SEO_keyword'] = $this->setting_model->tkt_get('set_pagekeyword');
		$data['SEO_descriptiton'] = $this->setting_model->tkt_get('set_pagedescriptiton');
		$data['SEO_image'] = $this->setting_model->tkt_get('logo');
		$data['_varibles'] = NULL;
		$data['_content'] = 'yengianguyen/congdung';
		$this->load->view('yengianguyen/index',$data);
	}

	function khuyenmai()
	{
		$data['SEO_title'] = "Khuyến Mãi - Yến Gia Nguyễn";
		$data['SEO_keyword'] = $this->setting_model->tkt_get('set_pagekeyword');
		$data['SEO_descriptiton'] = $this->setting_model->tkt_get('set_pagedescriptiton');
		$data['SEO_image'] = $this->setting_model->tkt_get('logo');
		$data['_varibles'] = NULL;
		$data['_content'] = 'yengianguyen/khuyenmai';
		$this->load->view('yengianguyen/index',$data);
	}

	function lienhe()
	{
		$data['SEO_title'] = "Liên Hệ - Yến Gia Nguyễn";
		$data['SEO_keyword'] = $this->setting_model->tkt_get('set_pagekeyword');
		$data['SEO_descriptiton'] = $this->setting_model->tkt_get('set_pagedescriptiton');
		$data['SEO_image'] = $this->setting_model->tkt_get('logo');
		$data['_varibles'] = NULL;
		$data['_content'] = 'yengianguyen/lienhe';
		$this->load->view('yengianguyen/index',$data);
	}

	function camnang($id)
	{
		$data['_varibles']['blog'] = $this->blog_model->tkt_get($id);
		$data['SEO_title'] = $data['_varibles']['blog']['blog_seo_title']." - Yến Gia Nguyễn";
		$data['SEO_keyword'] = $data['_varibles']['blog']['blog_seo_keyword'];
		$data['SEO_descriptiton'] = $data['_varibles']['blog']['blog_seo_description'];
		$data['SEO_image'] = $this->setting_model->tkt_get('logo');
		$data['_varibles']['blogs'] = $this->blog_model->tkt_get_list();
		$data['_content'] = 'yengianguyen/camnang';
		$this->load->view('yengianguyen/index',$data);
	}

	function danhsachsanpham($product_cat_id)
	{
		$data['_varibles']['products'] = $this->product_model->tkt_get_list(0,0,'DESC','','$product_cat_id');
		$data['_varibles']['product_category'] = $this->product_category_model->tkt_get($product_cat_id);
		$data['SEO_title'] = $data['_varibles']['product_category']['product_category_seo_title']." - Yến Gia Nguyễn";
		$data['SEO_keyword'] = $data['_varibles']['product_category']['product_category_seo_title'];
		$data['SEO_descriptiton'] = $data['_varibles']['product_category']['product_category_seo_title'];
		$data['SEO_image'] = $this->setting_model->tkt_get('logo');
		$data['_content'] = 'yengianguyen/danhsachsanpham';
		$this->load->view('yengianguyen/index',$data);
	}

	function sanpham($id)
	{
		$data['_varibles']['product'] = $this->product_model->tkt_get($id);
		$data['SEO_title'] = $data['_varibles']['product']['product_seo_title']." - Yến Gia Nguyễn";
		$data['SEO_keyword'] = $data['_varibles']['product']['product_seo_title'];
		$data['SEO_descriptiton'] = $data['_varibles']['product']['product_seo_title'];
		$data['SEO_image'] = $this->setting_model->tkt_get('logo');
		if($this->input->post('order_phone',TRUE))
		{
			$data_insert = array(
				'order_name'=> $this->input->post('order_name',TRUE),
				'order_phone'=> $this->input->post('order_phone',TRUE),
				'order_quanty'=> $this->input->post('order_quanty',TRUE),
				'order_time'=>time(),
				'order_product_id' => $id,
				'order_checked'=>0
				);
			if($this->order_model->tkt_insert($data_insert))
			{
				$data['alert'] = 'success';
			}else{
				$data['alert'] = 'error';
			}
		}
        $data['_varibles']['products'] = $this->product_model->tkt_get_list();
		$data['_content'] = 'yengianguyen/sanpham';
		$this->load->view('yengianguyen/index',$data);    
	}
}
?>