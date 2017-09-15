<!DOCTYPE html>
<html>
<head>
	<title>Pengumuman</title>
</head>
<body>
<?php
	foreach($pengumuman as $p){
		echo $p['id'];
		echo "<br>";
		echo $p['judul'];
		echo "<br>";
		echo substr($p['isi'], 0,90);
		echo "<br>";
		echo "<hr>";
	}

?>
</body>
</html>