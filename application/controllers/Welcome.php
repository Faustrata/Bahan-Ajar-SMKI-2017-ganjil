<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('welcome_message');
	}
	public function test(){
		echo "<h1> Hello world !!</h1>";
	}
	public function statusHarga($jenis=null){
		if($jenis=='Mercy'){
			echo "Mobil Mewah";
		}else if($jenis=='Daihatsu'){
			echo "Mobil Standard";
		}
		else{
			echo "Jenis Mobil tidak di set";
		}
	}
	public function tampilData(){
		$data = array(
					'nama' => 'Fulan',
					'kelas'=> 'XIIA',
					'sekolah' => 'SMK Informatika Utama'
			);
		$biodata= 'Fulan';
			$this->load->view('v_tampildata',$data);

	}

}
