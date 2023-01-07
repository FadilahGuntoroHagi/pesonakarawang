<?php
class Tours extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model('M_tour', 'm_tour');
		$this->load->model('M_pengunjung', 'm_pengunjung');
		$this->m_pengunjung->count_visitor();
	}

	function index()
	{
		$x['data'] = $this->m_tour->get_all_tour();
		$this->load->view('frontend/tours_view', $x);
	}
}
