<?php
class Wisatas extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model('M_Wisata', 'm_wisata');
		$this->load->model('M_pengunjung', 'm_pengunjung');
		$this->m_pengunjung->count_visitor();
	}

	function index()
	{
		$x['data'] = $this->m_wisata->get_all_wisata();
		$this->load->view('frontend/Wisata_view', $x);
	}
}
