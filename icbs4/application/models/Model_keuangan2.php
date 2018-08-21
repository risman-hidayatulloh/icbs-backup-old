<?php
class Model_keuangan2 extends CI_Model{
    
    
    function pemasukan(){
        $tanggal            = $this->input->post('tanggal');
        $jenis_pemasukan   = $this->input->post('jenis_pemasukan');
        $nim                = $this->input->post('nim');
        $jumlah_pemasukan  = $this->input->post('jumlah_pemasukan');
        $keterangan         = $this->input->post('keterangan');
        
        $transaksi          = array(
                                'tanggal'               =>  $tanggal,
                                'nim'                   =>  $nim,
                                'id_jenis_pemasukan'   =>  $jenis_pemasukan,
                                'jumlah'                =>  $jumlah_pemasukan,
                                'keterangan'=>$keterangan);   
        $this->db->insert('tbl_pemasukan',$transaksi);
    }
    
    function setup(){
        $jenis_pemasukan = $this->db->get('tbl_jenis_pemasukan');
        foreach ($jenis_pemasukan->result() as $jp){
            
            $params = array (
                'id_tahun_akademik'     => get_tahun_akademik_aktif('id_tahun_akademik'),
                'id_jenis_pemasukan'   => $jp->id_jenis_pemasukan,
                'jumlah_biaya'          => $this->input->post($jp->id_jenis_pemasukan));
            
            
             $validasi = array (
                'id_tahun_akademik'     => get_tahun_akademik_aktif('id_tahun_akademik'),
                'id_jenis_pemasukan'   => $jp->id_jenis_pemasukan);
             
            $chek = $this->db->get_where('tbl_biaya_pemasukan',$validasi);
            if($chek->num_rows()>0){
                // lakukan update
                $this->db->where('id_tahun_akademik',get_tahun_akademik_aktif('id_tahun_akademik'));
                $this->db->where('id_jenis_pemasukan',$jp->id_jenis_pemasukan);
                $this->db->update('tbl_biaya_pemasukan',$params);
            }else{
                // insert data
                $this->db->insert('tbl_biaya_pemasukan',$params);
            }
            
        }
    }
}