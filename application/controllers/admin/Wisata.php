<?php
class Wisata extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('masuk') != TRUE) {
            $url = base_url('administrator');
            redirect($url);
        };
        $this->load->model('M_wisata', 'm_wisata');
        $this->load->library('upload');
    }

    function index()
    {
        $x['wisata'] = $this->m_wisata->get_all_wisata();
        $this->load->view('admin/v_wisata', $x);
    }

    function add_new()
    {
        $this->load->view('admin/v_add_wisata');
    }

    function edit()
    {
        $kode = $this->uri->segment(4);
        $x['wisata'] = $this->m_wisata->get_wisata_by_kode($kode);
        $this->load->view('admin/v_edit_wisata', $x);
    }

    function simpan_wisata()
    {
        $config['upload_path'] = './assets/images/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if (!empty($_FILES['filefoto']['name'])) {
            if ($this->upload->do_upload('filefoto')) {
                $gbr = $this->upload->data();
                //Compress Image
                $config['image_library'] = 'gd2';
                $config['source_image'] = './assets/images/' . $gbr['file_name'];
                $config['create_thumb'] = FALSE;
                $config['maintain_ratio'] = FALSE;
                $config['quality'] = '60%';
                $config['width'] = 770;
                $config['height'] = 420;
                $config['new_image'] = './assets/images/' . $gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();

                $gambar = $gbr['file_name'];
                $nama = strip_tags(htmlspecialchars($this->input->post('xnama', TRUE), ENT_QUOTES));
                $deskripsi = $this->input->post('xdeskripsi', TRUE);

                $this->m_wisata->simpan_wisata($nama, $deskripsi, $gambar);
                echo $this->session->set_flashdata('msg', 'success');
                redirect('admin/wisata');
            } else {
                echo $this->session->set_flashdata('msg', 'warning');
                redirect('admin/wisata');
            }
        } else {
            redirect('admin/wisata');
        }
    }

    function update_wisata()
    {
        $config['upload_path'] = './assets/images/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if (!empty($_FILES['filefoto']['name'])) {
            if ($this->upload->do_upload('filefoto')) {
                $gbr = $this->upload->data();
                //Compress Image
                $config['image_library'] = 'gd2';
                $config['source_image'] = './assets/images/' . $gbr['file_name'];
                $config['create_thumb'] = FALSE;
                $config['maintain_ratio'] = FALSE;
                $config['quality'] = '60%';
                $config['width'] = 770;
                $config['height'] = 420;
                $config['new_image'] = './assets/images/' . $gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();

                $gambar = $gbr['file_name'];
                $kode = $this->input->post('kode');
                $nama = strip_tags(htmlspecialchars($this->input->post('xnama', TRUE), ENT_QUOTES));
                $deskripsi = $this->input->post('xdeskripsi', TRUE);

                $this->m_wisata->update_wisata($kode, $nama, $deskripsi, $gambar);
                echo $this->session->set_flashdata('msg', 'success');
                redirect('admin/wisata');
            } else {
                echo $this->session->set_flashdata('msg', 'warning');
                redirect('admin/wisata');
            }
        } else {
            $kode = $this->input->post('kode');
            $nama = strip_tags(htmlspecialchars($this->input->post('xnama', TRUE), ENT_QUOTES));
            $deskripsi = $this->input->post('xdeskripsi', TRUE);

            $this->m_wisata->update_wisata_no_img($kode, $nama, $deskripsi);
            echo $this->session->set_flashdata('msg', 'success');
            redirect('admin/wisata');
        }
    }

    function hapus_wisata()
    {
        $kode = $this->input->post('kode2');
        $this->m_wisata->hapus_wisata($kode);
        echo $this->session->set_flashdata('msg', 'success-hapus');
        redirect('admin/wisata');
    }
}
