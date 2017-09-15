<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class C_pendaftaran extends CI_Controller
{
	
	function __construct()
	{	
		parent:: __construct();
		$this->load->model('m_pendaftaran');
	}
	function index(){
		echo "ini berhasil";
	}
	function pengumuman(){
		$data['pengumuman']= $this->m_pendaftaran->get_pengumuman();
		$this->load->view('v_pengumuman',$data);
	}
	function add(){
		$this->load->view('v_form_add');
	}
}





?>