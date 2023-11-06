<?php
header("Content-Type: application/xml; charset=UTF-8");
include 'koneksi.php';


$harga_tiket = isset($_GET['harga_tiket']) ? $_GET['harga_tiket'] : '';

$query = "SELECT * FROM wisata WHERE 1";

if($harga_tiket) {
    $query .= " AND harga_tiket='$harga_tiket'";
}

$result = mysqli_query($koneksi, $query);
if (!$result) {
    die('Query error: ' . mysqli_error($koneksi));
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'tambah') {
    $nama_wisata = $_POST['nama_wisata'];
    $alamat = $_POST['alamat'];
    $diskripsi = $_POST['diskripsi'];
    $harga_tiket = $_POST['harga_tiket'];

    $query = "INSERT INTO warga (nama_wisata, alamat, diskripsi, harga_tiket) VALUES ('$nama_wisata', '$alamat', '$diskripsi', '$harga_tiket')";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data berhasil ditambahkan! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'edit') {
    $id = $_POST['id'];
    $nama_wisata = $_POST['nama_wisata'];
    $alamat = $_POST['alamat'];
    $diskripsi = $_POST['diskripsi'];
    $harga_tiket = $_POST['harga_tiket'];

    $query = "UPDATE wisata SET nama_wisata='$nama_wisata', alamat='$alamat', diskripsi='$diskripsi', harga_tiket='$harga_tiket' WHERE id=$id";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data berhasil diupdate! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'hapus') {
    $id = $_POST['id'];

    $query = "DELETE FROM wisata WHERE id=$id";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data berhasil dihapus! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}


$xml = new SimpleXMLElement('<data_wisata/>');

while ($row = mysqli_fetch_assoc($result)) {
    $wisata = $xml->addChild('wisata');
    $wisata->addChild('id', $row['id']);
    $wisata->addChild('nama_wisata', $row['nama_wisata']);
    $wisata->addChild('alamat', $row['alamat']);
    $wisata->addChild('diskripsi', $row['diskripsi']);
    $wisata->addChild('harga_tiket', $row['harga_tiket']);
}

echo $xml->asXML();
?>