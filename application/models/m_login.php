<?php defined('BASEPATH') OR exit('No direct script access allowed');
class m_login extends CI_Model
{
	function __construct()
	{
		$this->load->database();
	}
	public function get_username($username){
		$this->db->where('username',$username);
		$sql = $this->db->get('tb_user')->result_array();

		return $sql;
	}
}