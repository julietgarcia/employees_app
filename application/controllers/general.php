<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class General extends CI_Controller {

    /**
     * Login method.
     *
     * @author Juliet Garcia
     *
     * To created a session into application
     */
    public function login()
    {
        $data = array("title" => "Iniciar Sesión");
        $this->load->view('login',$data);
    }

    /**
     * Logout controller.
     *
     * @author Juliet Garcia
     *
     * To closed session into application
     */
    public function logout()
    {
        $data = array("title" => "Bienvenidos a Codeigniterrrrrrrrrrr");
        $this->load->view('login',$data);
    }
}

/* End of file general.php */
/* Location: ./application/controllers/general.php */