<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class api_transaksi extends RestController {
    
    public function __construct() {
        parent::__construct();
        $this->load->model('Transaksi_m');
    }

    
}