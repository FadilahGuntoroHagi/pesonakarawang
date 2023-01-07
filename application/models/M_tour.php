<?php
class M_tour extends CI_Model
{

	function get_tour_type()
	{
		$hsl = $this->db->get('tour_type');
		return $hsl;
	}

	function get_all_tour()
	{
		$hsl = $this->db->get('compare');
		return $hsl;
	}

	function simpan_tour($tour_type, $img_large, $img_thumb, $deskripsi, $type_rate)
	{
		$hsl = $this->db->query("INSERT INTO compare(type,gambar_large,gambar_kotak,detail,rate) VALUES ('$tour_type','$img_large','$img_thumb','$deskripsi','$type_rate')");
		return $hsl;
	}

	//front End
	function get_all_tour_home()
	{
		$hsl = $this->db->query("SELECT * FROM compare LIMIT 4");
		return $hsl;
	}

	function get_tour_by_kode($kode)
	{
		$hsl = $this->db->query("SELECT * FROM compare WHERE kd_compare='$kode'");
		return $hsl;
	}

	function update_tour($kode, $tour_type, $img_large, $img_thumb, $deskripsi, $type_rate)
	{
		$hsl = $this->db->query("UPDATE compare SET type='$tour_type',gambar_large='$img_large',gambar_kotak='$img_thumb',detail='$deskripsi',rate='$type_rate' WHERE kd_compare='$kode'");
		return $hsl;
	}

	function update_tour_img_large($kode, $tour_type, $img_large, $deskripsi, $type_rate)
	{
		$hsl = $this->db->query("UPDATE compare SET type='$tour_type',gambar_large='$img_large',detail='$deskripsi',rate='$type_rate' WHERE kd_compare='$kode'");
		return $hsl;
	}

	function update_tour_img_thumb($kode, $tour_type, $img_thumb, $deskripsi, $type_rate)
	{
		$hsl = $this->db->query("UPDATE compare SET type='$tour_type',gambar_kotak='$img_thumb',detail='$deskripsi',rate='$type_rate' WHERE kd_compare='$kode'");
		return $hsl;
	}

	function update_tour_no_img($kode, $tour_type, $deskripsi, $type_rate)
	{
		$hsl = $this->db->query("UPDATE compare SET type='$tour_type',detail='$deskripsi',rate='$type_rate' WHERE kd_compare='$kode'");
		return $hsl;
	}

	function hapus_tour($kode)
	{
		$hsl = $this->db->query("DELETE FROM compare WHERE kd_compare='$kode'");
		return $hsl;
	}
}
