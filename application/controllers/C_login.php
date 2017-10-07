<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class C_login extends CI_Controller
{
    function __construct(){
        parent::__construct();
        $this->load->helper('captcha');
        $this->load->model('m_login');
    }
    public function index(){
        $vals = array(
                'img_path'	 => './captcha/',
                'img_url'	 => base_url().'captcha/',
                'img_width'	 => '410',
                'img_height' => 40,
                'font_size'  => 16,
                'expiration' => 60, //secon
                'word_length' => 6,
                'colors' => array(
                    'background' => array(255, 255, 153),
                    'border' => array(234, 234, 225),
                    'text' => array(0, 51, 0),
                    'grid' => array(173, 230, 0)
                )
            );
        // create captcha image
        $cap = create_captcha($vals);

        // store image html code in a variable
        $data['image'] = $cap['image'];
        $this->session->set_userdata('set_captcha', $cap['word']);

        // send data2 to model then save
        $data2 = array(
                'captcha_time'  => $cap['time'],
                'ip_address'    => $this->input->ip_address(),
                'word'          => $cap['word']
        );
        $query = $this->db->insert_string('tb_captcha', $data2);
        $this->db->query($query);

        // store the captcha word in a session
        $this->load->view('login', $data);
    }
    public function validasi(){
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $get_captcha = $this->input->post('security_code');
        if($get_captcha==$this->session->userdata('set_captcha')){
            $cek_user = $this->m_login->get_username($username);
            if(count($cek_user)>0){
                $password_db = $cek_user[0]['password'];
                if($password_db==$password){
                    $this->load->view('berhasil');
                }
                else{
                    $this->session->set_flashdata('pesan_captcha','password tidak sama');
                    redirect('c_login/index');
                }
            }
            else{
                $this->session->set_flashdata('pesan_captcha','Username tidak ditemukan');
                redirect('c_login/index');
            }
            
        }
        else{
            $this->session->set_flashdata('pesan_captcha','Captcha Tidak Sama');
            redirect('c_login/index');
        }
    }
}