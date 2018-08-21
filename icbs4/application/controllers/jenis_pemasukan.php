<?php

Class Jenis_pemasukan extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->library('ssp');
        $this->load->model('Model_jenis_pemasukan');
    }

    function data() {
        // nama tabel
        $table = 'tbl_jenis_pemasukan';
        // nama PK
        $primaryKey = 'id_jenis_pemasukan';

        $cek = $this->session->userdata('id_guru');
        // list field
        if (!empty($cek)) {
            $columns = array(
                array('db' => 'nama_jenis_pemasukan', 'dt' => 'nama_jenis_pemasukan'),
                array(
                    'db' => 'id_jenis_pemasukan',
                    'dt' => 'aksi',
                    'formatter' => function( $d) {
                        //return "<a href='edit.php?id=$d'>EDIT</a>";

                        return anchor('jenis_pemasukan/edit/'.$d,'<i class="fa fa-edit"></i>','class="btn btn-xs btn-teal tooltips" data-placement="top" data-original-title="Edit"');
                    }
                )
            );
        }
        else{
            //untuk sekolah
            $columns = array(
                array('db' => 'nama_jenis_pemasukan', 'dt' => 'nama_jenis_pemasukan'),
                array(
                    'db' => 'id_jenis_pemasukan',
                    'dt' => 'aksi',
                    'formatter' => function( $d) {
                        //return "<a href='edit.php?id=$d'>EDIT</a>";
                        return anchor('jenis_pemasukan/edit/'.$d,'<i class="fa fa-edit"></i>','class="btn btn-xs btn-teal tooltips" data-placement="top" data-original-title="Edit"').' 
                            '.anchor('jenis_pemasukan/delete/'.$d,'<i class="fa fa-trash"></i>','class="btn btn-xs btn-danger tooltips" data-placement="top" data-original-title="Delete"');
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
        $this->template->load('template', 'jenis_pemasukan/list');
    }

    function add() {
        if (isset($_POST['submit'])) {
            $this->Model_jenis_pemasukan->save();
            redirect('jenis_pemasukan');
        } else {
            $this->template->load('template', 'jenis_pemasukan/add');
        }
    }
    
    function edit(){
        if(isset($_POST['submit'])){
            $this->Model_jenis_pemasukan->update();
            redirect('jenis_pemasukan');
        }else{
            $id_jenis_pemasukan      = $this->uri->segment(3);
            $data['jenis_pemasukan'] = $this->db->get_where('tbl_jenis_pemasukan',array('id_jenis_pemasukan'=>$id_jenis_pemasukan))->row_array();
            $this->template->load('template', 'jenis_pemasukan/edit',$data);
        }
    }
    
    function delete(){
        $id_jenis_pemasukan = $this->uri->segment(3);
        if(!empty($id_jenis_pemasukan)){
            // proses delete data
            $this->db->where('id_jenis_pemasukan',$id_jenis_pemasukan);
            $this->db->delete('tbl_jenis_pemasukan');
        }
        redirect('jenis_pemasukan');
    }

}