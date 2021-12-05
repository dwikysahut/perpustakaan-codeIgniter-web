<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MPeminjaman extends CI_Model
{
    public function get_data()
    {
        $query = $this->db->get('peminjaman');
        return $query->result_array();
    }
    public function get_data_by_id($id){
        $this->db->where('id_transaksi',$id);
        $query= $this->db->get('peminjaman');
        return $query->row_array();

    }
    public function tambah_data($post)
    {
        $input = array(
            'nomer_anggota' => $post['nomer_anggota'],
            'id_buku' => $post['id_buku'],
            'tanggal_pinjam' =>  $post['tanggal_pinjam'],
            'tanggal_akhir_peminjaman' =>  $post['tanggal_akhir_peminjaman'],
            'id_pegawai' =>  $post['id_pegawai'],
            'jumlah' => $post['jumlah']
        );
        $this->db->insert('peminjaman', $input);
    }
    public function edit_data($post, $id)
    {
        $input = array(
            'nomer_anggota' => $post['nomer_anggota'],
            'id_buku' => $post['id_buku'],
            'tanggal_pinjam' =>  $post['tanggal_pinjam'],
            'tanggal_akhir_peminjaman' =>  $post['tanggal_akhir_peminjaman'],
            'id_pegawai' =>  $post['id_pegawai'],
            'jumlah' => $post['jumlah']
        );
        $this->db->where('id_transaksi', $id);
        $this->db->update('peminjaman', $input);
    }
    public function hapus_data($id)
    {
        $this->db->where('id_transaksi', $id);
        $this->db->delete('peminjaman');
    }

    public function get_data_by_status()
    {
        $this->db->where('status',0);
        $query = $this->db->get('peminjaman');
        return $query->result_array();
    }

    public function edit_status($id)
    {
        $input = array(
            'status' => 1

        );
        $this->db->where('id_transaksi', $id);
        $this->db->update('peminjaman', $input);
    }
    public function get_count(){
        
        return $this->db->count_all_results('peminjaman');
    }
}
