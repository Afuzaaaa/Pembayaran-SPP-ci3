<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth_m extends CI_Model {
	public function get_where($table, $where)
	{
		return $this->db->get_where($table, $where);
	}

}