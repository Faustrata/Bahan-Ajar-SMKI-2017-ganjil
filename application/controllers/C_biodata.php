<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class C_biodata extends CI_Controller
{

	function __construct()
	{
		parent:: __construct();
		$this->load->model('m_biodata');
		$this->load->library('session');
		$this->load->library('pagination');
		$this->load->library('upload');
	}
	public function index($id=null){
		if (isset($_POST['q'])){
			$str_cari = $this->input->post('cari');
			$this->session->set_userdata('sess_cari',$str_cari);
			
		}
		else{
			$str_cari = $this->session->userdata('sess_cari');
		}

		$config['base_url'] 		= base_url().'c_biodata/index';
		$config['total_rows'] 		= $this->m_biodata->record_count($str_cari);
		$config['per_page'] 		= '5';
        $config['num_links']        = 5;
        $config['full_tag_open']    = '<ul class="pagination">';
        $config['full_tag_close']   = '</ul>';
        $config['first_link']       = 'First';
        $config['last_link']        = 'Last';
        $config['first_tag_open']   = '<li>';
        $config['first_tag_close']  = '</li>';
        $config['prev_link']        = '&laquo';
        $config['prev_tag_open']    = '<li class="prev">';
        $config['prev_tag_close']   = '</li>';
        $config['next_link']        = '&raquo';
        $config['next_tag_open']    = '<li>';
        $config['next_tag_close']   = '</li>';
        $config['last_tag_open']    = '<li>';
        $config['last_tag_close']   = '</li>';
        $config['cur_tag_open']     = '<li class="active"><a href="">';
        $config['cur_tag_close']    = '</a></li>';
        $config['num_tag_open']     = '<li>';
        $config['num_tag_close']    = '</li>';

		$this->pagination->initialize($config);

		//buat pagination
		$data['halaman'] = $this->pagination->create_links();

		//tamplikan data
		$data['hasil'] = $this->m_biodata->fetch_data($config['per_page'], $id,$str_cari);

		$this->load->view('biodata/v_biodata', $data);

	}
	public function view($id){
		$biodata['hasil']=$this->m_biodata->get_data_id($id);

		$this->load->view('biodata/v_edit_form',$biodata);

	}
	public function update(){

		$id = $this->input->post('id');
		$nama = $this->input->post('nama');
		$jenkel = $this->input->post('jenis_kelamin');
		$alamat = $this->input->post('alamat');
		$usia = $this->input->post('usia');


		$ijazah = $_FILES['ijazah_baru']['name'];
		if($ijazah!=''){
				list($txt, $ext) = explode(".", $ijazah);
				$ijazah_baru 	 = "profil_".time().".".$ext;
				$path = "./assets/images/ijazah/" ;

				$config['file_name'] = $ijazah_baru;
				$config['upload_path'] = $path;
				$config['allowed_types'] = 'gif|jpg|png|gif|bmp|jpeg';
				$config['max_size'] = '1050';
				$config['max_width']  = '1024';
				$config['max_height']  = '750';
				$this->upload->initialize($config);
				if ( ! $this->upload->do_upload('ijazah_baru'))
				{	
					echo $this->upload->display_errors();
					exit;
				}
		}
		else{
			$ijazah_baru = $this->input->post('ijazah_lama');
		}

		
		$data = array(
					'nama' => $nama,
					'jenis_kelamin' => $jenkel,
					'alamat' => $alamat,
					'usia' => $usia,
					'scan_ijazah' => $ijazah_baru
			);


		$update = $this->m_biodata->update_data($data,$id,$ijazah_baru);
		if($update){
			$this->session->set_flashdata('pesan','Data berhasil di update');
			redirect('c_biodata/index');
		}
		else{
			echo "gagal";
		}

	}
	public function data($id=null){
		if (isset($_POST['q'])){
			$str_cari = $this->input->post('cari');
			$this->session->set_userdata('sess_cari',$str_cari);
		}
		else{
			$str_cari = $this->session->userdata('sess_cari');
		}
		//echo $str_cari;
		//pengaturan pagination
		 $config['base_url'] = base_url().'c_biodata/data';
		 $config['total_rows'] = $this->m_biodata->record_count($str_cari);
		 $config['per_page'] = '5';
		 $config['first_page'] = 'Awal';
		 $config['last_page'] = 'Akhir';
		 $config['next_page'] = '&laquo; ';
		 $config['prev_page'] = ' &raquo;';

		//echo $config['total_rows'];
		//inisialisasi config
		 $this->pagination->initialize($config);

		//buat pagination
		 $data['halaman'] = $this->pagination->create_links();

		//tamplikan data
		 $data['results'] = $this->m_biodata->fetch_data($config['per_page'], $id,$str_cari);

		$this->load->view('biodata/v_search', $data);

	}
}
