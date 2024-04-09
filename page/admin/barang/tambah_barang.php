<div class="box-title">
    <p>Barang / <b>Manajemen Barang Jualan</b></p>
</div>
<div id="box">
  <h1>Barang Jualan Tambah</h1>
  <form name="add" method="post" action="?page=tambah_barangpro" enctype="multipart/form-data">
  <!-- AISEY COLLECTION -->
    <table class="article">
      <tr>
        <td>Gambar</td>
        <td>
          <input type="file" name="gambar" required>
        </td>
      </tr>
  <!-- code by AISEY COLLECTION -->
      <tr>
        <td>Deskripsi COLLECTION</td>
        <td>
          <input type="text" name="deskripsi" size="50" placeholder="ex: jersey barcelona away" required>
        </td>
      </tr>
  <!-- code by AISEY COLLECTION -->
      <tr>
        <td>Harga</td>
        <td>
          <input type="text" name="harga" size="50" placeholder="ex: 130000" required>
        </td>
      </tr>
  <!-- code by AISEY COLLECTION -->
      <tr>
        <td>Stok COLLECTION</td>
        <td>
          <input type="text" name="stok" size="50" placeholder="ex: 100" required>
        </td>
      </tr>
  <!-- code by AISEY COLLECTION -->
      <tr>
        <td></td>
        <td>
          <input class="tombol-biru" type="submit" name="add" value="Tambah & Simpan">
          <a class="tombol-merah" href="?page=barang">Tutup</a>
        </td>
      </tr>
    </table>
  <!-- code by AISEY COLLECTION -->
  </form>
  <!-- code by AISEY COLLECTION -->
</div>