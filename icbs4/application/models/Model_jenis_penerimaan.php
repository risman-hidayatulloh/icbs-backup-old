<?php

class Model_jenis_penerimaan extends CI_Model {

    public $table ="tbl_jenis_penerimaan";
    
    function save() {
        $data = array(
            'nama_jenis_penerimaan'  => $this->input->post('nama_jenis_penerimaan', TRUE)
        );
        $this->db->insert($this->table,$data);
    }
    
    function update() {
        $data = array(
            'nama_jenis_penerimaan'  => $this->input->post('nama_jenis_penerimaan', TRUE)
        );
        $id_jenis_penerimaan   = $this->input->post('id_jenis_penerimaan');
        $this->db->where('id_jenis_penerimaan',$id_jenis_penerimaan);
        $this->db->update($this->table,$data);
    }

}