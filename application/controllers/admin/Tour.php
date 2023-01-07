<?php
class Tour extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masuk') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('M_tour', 'm_tour');
	}
	function index()
	{
		$x['tour'] = $this->m_tour->get_all_tour();
		$this->load->view('admin/v_tour', $x);
	}

	function add_new()
	{
		$x['type'] = $this->m_tour->get_tour_type();
		$this->load->view('admin/v_add_tour', $x);
	}

	function get_edit()
	{
		$kode = $this->uri->segment(4);
		$x['record'] = $this->m_tour->get_tour_by_kode($kode);
		$x['type'] = $this->m_tour->get_tour_type();
		$this->load->view('admin/v_edit_tour', $x);
	}

	function simpan_tour()
	{
		$data = array();
		$config['upload_path'] = './assets/images/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('userfile')) {
			$error = array('error' => $this->upload->display_errors());
		} else {
			$fileData = $this->upload->data();
			$data['userfile'] = $fileData['file_name'];
		}

		if (!$this->upload->do_upload('userfile2')) {
			$error = array('error' => $this->upload->display_errors());
		} else {
			$fileData = $this->upload->data();
			$data['userfile2'] = $fileData['file_name'];
		}

		$img_large = $data['userfile'];
		$img_thumb = $data['userfile2'];
		$deskripsi = $this->input->post('xdeskripsi');
		$tour_type = strip_tags($this->input->post('xtype'));
		$type_rate = strip_tags($this->input->post('xrate'));

		$this->m_tour->simpan_tour($tour_type, $img_large, $img_thumb, $deskripsi, $type_rate);
		redirect('admin/tour');
	}

	function update_tour()
	{
		$data = array();
		$config['upload_path'] = './assets/images/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->load->library('upload', $config);

		if (!empty($_FILES['userfile']['name']) && !empty($_FILES['userfile2']['name'])) {

			if (!$this->upload->do_upload('userfile')) { //upload image 1
				$error = array('error' => $this->upload->display_errors());
			} else {
				$fileData = $this->upload->data();
				$data['userfile'] = $fileData['file_name'];
			}

			if (!$this->upload->do_upload('userfile2')) { //upload image 2
				$error = array('error' => $this->upload->display_errors());
			} else {
				$fileData = $this->upload->data();
				$data['userfile2'] = $fileData['file_name'];
			}

			$img_large = $data['userfile'];
			$img_thumb = $data['userfile2'];
			$kode = $this->input->post('xkode');
			$deskripsi = $this->input->post('xdeskripsi');
			$tour_type = strip_tags($this->input->post('xtype'));
			$type_rate = strip_tags($this->input->post('xrate'));

			$this->m_tour->update_tour($kode, $tour_type, $img_large, $img_thumb, $deskripsi, $type_rate);
			redirect('admin/tour');
		} elseif (!empty($_FILES['userfile']['name']) || !empty($_FILES['userfile2']['name'])) {

			if (!empty($_FILES['userfile']['name'])) {
				if (!$this->upload->do_upload('userfile')) { //upload image 1
					$error = array('error' => $this->upload->display_errors());
				} else {
					$fileData = $this->upload->data();
					$data['userfile'] = $fileData['file_name'];
				}
				$img_large = $data['userfile'];
				$kode = $this->input->post('xkode');
				$deskripsi = $this->input->post('xdeskripsi');
				$tour_type = strip_tags($this->input->post('xtype'));
				$type_rate = strip_tags($this->input->post('xrate'));

				$this->m_tour->update_tour_img_large($kode, $tour_type, $img_large, $deskripsi, $type_rate);
				redirect('admin/tour');
			} else {
				if (!$this->upload->do_upload('userfile2')) { //upload image 2
					$error = array('error' => $this->upload->display_errors());
				} else {
					$fileData = $this->upload->data();
					$data['userfile2'] = $fileData['file_name'];
				}
				$img_thumb = $data['userfile2'];
				$kode = $this->input->post('xkode');
				$deskripsi = $this->input->post('xdeskripsi');
				$tour_type = strip_tags($this->input->post('xtype'));
				$type_rate = strip_tags($this->input->post('xrate'));

				$this->m_tour->update_tour_img_thumb($kode, $tour_type, $img_thumb, $deskripsi, $type_rate);
				redirect('admin/tour');
			}
		} else {
			$kode = $this->input->post('xkode');
			$deskripsi = $this->input->post('xdeskripsi');
			$tour_type = strip_tags($this->input->post('xtype'));
			$type_rate = strip_tags($this->input->post('xrate'));

			$this->m_tour->update_tour_no_img($kode, $tour_type, $deskripsi, $type_rate);
			redirect('admin/tour');
		}
	}

	function hapus_tour()
	{
		$kode = $this->input->post('kode');
		$this->m_tour->hapus_tour($kode);
		redirect('admin/tour');
	}
}
