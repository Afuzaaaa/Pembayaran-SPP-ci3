<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class api_wali extends RestController {
    
    public function __construct() {
        parent::__construct();
        $this->load->model('Wali_m');
    }
    public function index_get($id=0)
    {
        $data['guruWali'] = $this->Wali_m->get_join('guru', 'wali_kelas')->result_array();
        $this->response($data['guruWali'], 200);
    }

    public function index_post()
    {
        $this->form_validation->set_rules('nama', 'Nama Wali Kelas', 'required|trim', ['required' => 'Nama Wali Kelas wajib di isi!.']);
        $this->form_validation->set_rules('kelas', 'Kelas', 'required|trim', ['required' => 'Kelas wajib di isi!.']);

        if ($this->form_validation->run() == FALSE) {
            $this->response(['message' => validation_errors()], 400);
        } else {
            $data = [
                'kelas' => html_escape($this->post('kelas', true)),
                'id_guru' => html_escape($this->post('nama', true))
            ];

            $this->Wali_m->insert('wali_kelas', $data);
            $this->response(['message' => 'Data Wali Kelas Berhasil Ditambahkan.'], 201);
        }
    }

    public function index_put(  )
    {
        $kelas = $this->put('kelas');

        $data = array(
            'id_guru' => $this->put('id_guru')
        );

        $this->db->where('kelas', $kelas);
        $update = $this->db->update('wali_kelas', $data);

        if($update){
            $this->response($data, RestController::HTTP_OK);
        }else{
            $this->response(array('status'=>'failed', 502));
        }
    }

    public function index_delete()
    {
        $idkelas = $this->delete('kelas');
        $check_data = $this->db->get_where('wali_kelas', ['kelas'=>$idkelas])->row_array();

        if($check_data){
            $this->db->where('kelas', $idkelas);
            $this->db->delete('wali_kelas');

            $this->response(array('status'=>'success'), 200);
        }else{
            $this->response(array('status'=>'Data not found'), 404);
        }
    }
}