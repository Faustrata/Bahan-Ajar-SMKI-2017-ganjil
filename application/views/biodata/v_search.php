<!DOCTYPE html>
<html>
<head>
	<title>Search Pagination Session dengan Codeigniter | AZZURA Media</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/default.css'); ?>">
	<style>
 body
 {
 font-family:arial;
 background:#FFF7E7;
 }

.t_data
 {
 border-collapse:collapse;
 }

.t_data tr th
 {
 font-size:12px;
 font-weight:bold;
 background:#A46D07;
 color:#FFFF00;
 padding:4px;
 }

.t_data tr td
 {
 font-size:12px;
 padding:4px;
 }

.t_data tr:hover
 {
 background:#C8FABF;

}

.halaman
 {
 margin:10px;
 font-size:11px;
 }

.halaman a
 {

padding:3px;
 background:#990000;
 -moz-border-radius:5px;
 -webkit-border-radius:5px;
 border:1px solid #FFA500;
 font-size:10px;
 font-weight:bold;
 color:#FFF;
 text-decoration:none;

}
 </style>
</head>
<body>

	<div class="wrap">
		<h1>Search Pagination Session dengan Codeigniter</h1>

		<form action="<?php echo base_url('c_biodata/data/'); ?>" method="post">
		<p>
			<input type="search" name="cari" placeholder="Search Keyword..."> <input type="submit" name="q" value="Search">
		</p>
		<table border="1" width="780px" class="t_data">
			<thead>
				<tr>
					<th>NIM</th>
					<th>Nama</th>
					<th>Jurusan</th>
					<th>Alamat</th>
				</tr>
			</thead>
			<tbody>
				<?php
				if (count($results) > 0) {
					foreach($results as $row)
					{
						echo "<div class=\"letter\">";
						?>

						<tr>
							<td valign="top"><?php echo $row->Nomor; ?></td>
							<td valign="top"><?php echo $row->nama; ?></td>
							<td valign="top"><?php echo $row->jenis_kelamin; ?></td>
							<td valign="top"><?php echo $row->alamat; ?></td>
						</tr>

				<?php
						echo "</div>";
					}
					echo "<tr><td colspan='6'><div style='background:000; float:right;'>".$halaman."</div></td></tr>";

				} else {
					echo "<tbody><tr><td colspan='8' style='padding:10px; background:#F00; border:none; color:#FFF;'>Hasil pencarian tidak ditemukan.</td></tr></tbody>";
				}
				?>
			</tbody>
		</table>
		</form>
	</div>

</body>
</html>
