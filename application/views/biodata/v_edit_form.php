<!DOCTYPE html>
<html>
<head>
	<title>Edit Biodata <?php echo $hasil->row('nama') ?></title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>">
</head>
<body>
	<form action="<?php echo base_url('c_biodata/update')?>" method="post"> 
		<table class="table table-responsive" align="center"> 
			<input type="hidden" name="id" value="<?php echo $hasil->row('id') ?>"/> 
			<tr> 
				<td>Nama</td><td><input type="text" name="nama" value="<?php echo $hasil->row('nama');?>" /></td> 
			<tr>
			    <td>Jenis Kelamin</td>
			    <td><input type="radio" name="jenis_kelamin" value="Laki-laki" <?php if($hasil->row('jenis_kelamin')==="Laki-laki"){ echo "checked";}?> > Laki-laki &nbsp;&nbsp;
			    <input type="radio" name="jenis_kelamin" value="Perempuan" <?php if($hasil->row('jenis_kelamin')=="Perempuan"){ echo "checked";}?> >Perempuan</td>
			    </tr>
			</tr> 
			<tr> 
			 	<td>Alamat</td> 
				<td><textarea cols="20" rows="5" name="alamat"><?php echo $hasil->row('alamat');?></textarea></td> 
			</tr> 
			<tr>
				<td>Usia</td>
				<td><input type="text" name="usia" value="<?php echo $hasil->row('usia');?>" /></td> 
			</tr> 
			<tr>
				<td><input type="submit" value="Simpan" name="simpan" /></td> 
			 </tr> 
		</table> 
	</form>
</body>
</html>

