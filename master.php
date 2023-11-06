<?php

include "koneksi.php";


$method = $_SERVER['REQUEST_METHOD'];

header('Content-Type: application/json');

switch($method) {
    case 'GET':
        $sql = "SELECT * FROM wisata";
        $stmt = $pdo->query($sql);
        $wisata = $stmt->fetchAll();
        echo json_encode($wisata);
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->nama_wisata) && isset($data->alamat) && isset($data->diskripsi)&& isset($data->harga_tiket)) {
            $sql = "INSERT INTO wisata (nama_wisata, alamat, diskripsi, harga_tiket) VALUES (?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->nama_wisata, $data->alamat, $data->diskripsi, $data->harga_tiket]);
            echo json_encode(['message' => 'Wisata berhasil ditambahkan']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'PUT':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id) && isset($data->nama_wisata) && isset($data->alamat) && isset($data->diskripsi)&& isset($data->harga_tiket)) {
            $sql = "UPDATE wisata SET nama_wisata=?, alamat=?, diskripsi=?, harga_tiket=? WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->nama_wisata, $data->alamat, $data->diskripsi, $data->harga_tiket, $data->id]);
            echo json_encode(['message' => 'Wisata berhasil diperbarui']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id)) {
            $sql = "DELETE FROM wisata WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->id]);
            echo json_encode(['message' => 'Wisata berhasil dihapus']);
        } else {
            echo json_encode(['message' => 'ID tidak ditemukan']);
        }
        break;

    default:
        echo json_encode(['message' => 'Metode tidak dikenali']);
        break;
}

?>
