<?php

class Model_jenis_pemasukan extends CI_Model {

    public $table ="tbl_jenis_pemasukan";
    
    function save() {
        $data = array(
            'nama_jenis_pemasukan'  => $this->input->post('nama_jenis_pemasukan', TRUE)
        );
        $this->db->insert($this->table,$data);
    }
    
    function update() {
        $data = array(
            'nama_jenis_pemasukan'  => $this->input->post('nama_jenis_pemasukan', TRUE)
        );
        $id_jenis_pemasukan   = $this->input->post('id_jenis_pemasukan');
        $this->db->where('id_jenis_pemasukan',$id_jenis_pemasukan);
        $this->db->update($this->table,$data);
    }

}