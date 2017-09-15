<!DOCTYPE html>
<html>
<head>
	<title>Data Biodata</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>">
	<style type="text/css">
		body {
			margin-top: 50px;
		}
	</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<?php echo $this->session->flashdata('pesan'); ?>
			<form action="<?php echo base_url('c_biodata/index'); ?>" method="post">
			<p>
				<input type="search" class="input-sm" name="cari" placeholder="Search Name..."> <input type="submit" name="q" class="btn btn-success" value="Search">
			</p>
			<table align="center" class="table table-bordered"> 
				<tr> 
				 	<th>No</th>
				 	<th>Nama</th>
					<th>Jenis Kelamin</th>  
				 	<th>Alamat</th><th>Usia</th> 
				 	<th>Aksi</th> 
				</tr> 
					<?php 
					$no=1;
					foreach ($hasil as $row) {
					?> 
				<tr> 
				 	<td align="center"><?php echo $row->nomor?></td> 
				 	<td><?php echo $row->nama?></td> 
					<td><?php echo $row->jenis_kelamin ?></td> 
				 	<td><?php echo $row->alamat ?></td> 
				 	<td><?php echo $row->usia ;?></td> 
				 	<td> 
						<a href="<?php echo base_url('c_biodata/view/').$row->id ?>">Edit</a> ||
						<a href="<?php echo base_url('c_biodata/delete/').$row->id ?>">Hapus</a> 
				 	</td> 
				</tr>
					<?php 
					} 
					?> 
					
			</table>
			<div class="col-md-12">
				<!-- Menampilkan pagination -->
				<?php echo $halaman;?>
			</div>
	</form>
	</div>
</div>
</body>
</html>