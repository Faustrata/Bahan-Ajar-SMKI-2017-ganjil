<?php defined('BASEPATH') OR exit('No direct script access allowed');
class m_biodata extends CI_Model
{
	function __construct()
	{
		$this->load->database();
	}

	public function get_all_data(){

		$query=$this->db->get('tb_biodata');

		return $query;
	}
	public function get_data_id($id){

		$this->db->where(array('id'=>$id));
		$query=$this->db->get('tb_biodata');

		return $query;
	}

	public function update_data($data,$id,$ijazah_baru){
		$ambil = $this->get_data_id($id);
		$ijazah_lama = $ambil->row('scan_ijazah');

		$this->db->where('id',$id);
		$this->db->update('tb_biodata',$data);
		if($ijazah_lama!=$ijazah_baru && $ijazah_lama!=''){
			unlink("assets/image/ijazah/".$ijazah_lama);
		}
		return TRUE;
	}
	public function fetch_data($num, $offset,$str_cari) {
		if(!empty($str_cari)){
			$this->db->like('nama',$str_cari);
		}

	 	empty($offset) ? $offset = 0 : $offset;

	 	$this->db->query("SET @no=".$offset);
	 	$this->db->select('*,(@no:=@no+1 )AS nomor');
        $this->db->order_by('nama', 'ASC');

		$data = $this->db->get('tb_biodata', $num, $offset);

		return $data->result();
   }
	public function record_count($str_cari){
		if(!empty($str_cari)){
			$this->db->like('nama',$str_cari);
		}
		return $this->db->get("tb_biodata")->num_rows();

	}
}
