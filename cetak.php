<?php 
	memerlukan  'koneksi.php' ;
	$ id = $ _GET [ 'id' ];
?>
< html >
	< kepala >
		< judul > cetak </ judul >
		< link  rel =" stylesheet " href =" bootstrap.css " >
	</ kepala >
	< tubuh >
		< script > jendela . cetak ( ) ; </ skrip >
		< div  class =" wadah " >
			< div  kelas =" baris " >
				< div  class =" col-sm-4 " > </ div >
				< div  class =" col-sm-4 " >
		<?php 
		
		$ sql = mysqli_query ( $ con , "SELECT * FROM data WHERE id='$id'" );
		while ( $ data = mysqli_fetch_array ( $ sql )){
		?>
					< tengah >
						< p > Data Pemantauan Covid19 wilayah <?php  echo  $ data [ 'nama_wilayah' ]; ?> </ p >
						< p > per <?php   echo  date ( 'd FY, h:i:s A' ); ?> </ p >
						< p > <?php   echo  $ data [ 'nama_operator' ]; ?> / <?php  echo  $ data [ 'nim_mahasiswa' ]; ?> </ p >
					</ tengah >
					< batas tabel   =" 1 " gaya =" lebar:100%; " >
						< tr >
							< td > < tengah > < b > Positif </ b > </ tengah > </ td >
							< td > < tengah > < b > Dirawat </ b > </ tengah > </ td >
							< td > < tengah > < b > Sembuh </ b > </ tengah > </ td >
							< td > < Tengah > < b > Meninggal </ b > </ Tengah > </ td >
						</ tr >
						
							< td > < center > <?php  echo  $ data [ 'jumlah_positif' ]; ?> </ tengah > </ td >
							< td > < tengah > <?php  echo  $ data [ 'jumlah_dirawat' ]; ?> </ tengah > </ td >
							< td > < center > <?php  echo  $ data [ 'jumlah_sembuh' ]; ?> </ tengah > </ td >
							< td > < center > <?php  echo  $ data [ 'jumlah_meninggal' ]; ?> </ tengah > </ td >
						</ tr >
					</ tabel >
				<?php
			}
			?>
		</ div >
	</ tubuh >
</ html >