<?php
class M_wisata extends CI_Model
{

	function get_all_wisata()
	{
		$hsl = $this->db->get('wisata');
		return $hsl;
	}

	function simpan_wisata($nama, $deskripsi, $gambar)
	{
		$hsl = $this->db->query("INSERT INTO wisata (nama,gambar,detail) VALUES ('$nama','$gambar','$deskripsi')");
		return $hsl;
	}

	function get_wisata_by_kode($kode)
	{
		$hsl = $this->db->query("SELECT * FROM wisata WHERE kd_wisata='$kode'");
		return $hsl;
	}

	function update_wisata($kode, $nama, $deskripsi, $gambar)
	{
		$hsl = $this->db->query("UPDATE wisata SET nama='$nama',gambar='$gambar',detail='$deskripsi' WHERE kd_wisata='$kode'");
		return $hsl;
	}

	function update_wisata_no_img($kode, $nama, $deskripsi)
	{
		$hsl = $this->db->query("UPDATE wisata SET nama='$nama',detail='$deskripsi' WHERE kd_wisata='$kode'");
		return $hsl;
	}

	function hapus_wisata($kode)
	{
		$hsl = $this->db->query("DELETE FROM wisata WHERE kd_wisata='$kode'");
		return $hsl;
	}
}
