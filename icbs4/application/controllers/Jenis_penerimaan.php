<?php

Class Jenis_penerimaan extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->library('ssp');
        $this->load->model('Model_jenis_penerimaan');
    }

    function data() {
        // nama tabel
        $table = 'tbl_jenis_penerimaan';
        // nama PK
        $primaryKey = 'id_jenis_penerimaan';

        $cek = $this->session->userdata('id_guru');
        // list field
        if (!empty($cek)) {
            $columns = array(
                array('db' => 'nama_jenis_penerimaan', 'dt' => 'nama_jenis_penerimaan'),
                array(
                    'db' => 'id_jenis_penerimaan',
                    'dt' => 'aksi',
                    'formatter' => function( $d) {
                        //return "<a href='edit.php?id=$d'>EDIT</a>";

                        return anchor('jenis_penerimaan/edit/'.$d,'<i class="fa fa-edit"></i>','class="btn btn-xs btn-teal tooltips" data-placement="top" data-original-title="Edit"');
                    }
                )
            );
        }
        else{
            //untuk sekolah
            $columns = array(
                array('db' => 'nama_jenis_penerimaan', 'dt' => 'nama_jenis_penerimaan'),
                array(
                    'db' => 'id_jenis_penerimaan',
                    'dt' => 'aksi',
                    'formatter' => function( $d) {
                        //return "<a href='edit.php?id=$d'>EDIT</a>";
                        return anchor('jenis_penerimaan/edit/'.$d,'<i class="fa fa-edit"></i>','class="btn btn-xs btn-teal tooltips" data-placement="top" data-original-title="Edit"').' 
                            '.anchor('jenis_penerimaan/delete/'.$d,'<i class="fa fa-trash"></i>','class="btn btn-xs btn-danger tooltips" data-placement="top" data-original-title="Delete"');
                    }
                )
            );
        }
        $sql_details = array(
            'user' => $this->db->username,
            'pass' => $this->db->password,
            'db' => $this->db->database,
            'host' => $this->db->hostname
        );

        echo json_encode(
                SSP::simple($_GET, $sql_details, $table, $primaryKey, $columns)
        );
    }

    function index() {
        $this->template->load('template', 'jenis_penerimaan/list');
    }

    function add() {
        if (isset($_POST['submit'])) {
            $this->Model_jenis_penerimaan->save();
            redirect('jenis_penerimaan');
        } else {
            $this->template->load('template', 'jenis_penerimaan/add');
        }
    }
    
    function edit(){
        if(isset($_POST['submit'])){
            $this->Model_jenis_penerimaan->update();
            redirect('jenis_penerimaan');
        }else{
            $id_jenis_penerimaan      = $this->uri->segment(3);
            $data['jenis_penerimaan'] = $this->db->get_where('tbl_jenis_penerimaan',array('id_jenis_penerimaan'=>$id_jenis_penerimaan))->row_array();
            $this->template->load('template', 'jenis_penerimaan/edit',$data);
        }
    }
    
    function delete(){
        $id_jenis_penerimaan = $this->uri->segment(3);
        if(!empty($id_jenis_penerimaan)){
            // proses delete data
            $this->db->where('id_jenis_penerimaan',$id_jenis_penerimaan);
            $this->db->delete('tbl_jenis_penerimaan');
        }
        redirect('jenis_penerimaan');
    }

}