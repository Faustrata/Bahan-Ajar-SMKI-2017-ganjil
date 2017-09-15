<?php defined('BASEPATH') OR exit('No direct script access allowed');
class m_pendaftaran extends CI_Model
{	
	function __construct()
	{
		$this->load->database();
	}

	public function get_pengumuman(){
		
		$query=$this->db->query("SELECT * FROM tb_pengumuman ORDER BY id ASC");

		return $query->result_array();
	}
}