<html>

<head>

<title>PHP Pdf file Upload script : Example</title>

</head>



<body>

<div style="padding: 20px; border: 1px solid #999">





<h2>Upload PDF File :</h2>

<form enctype="multipart/form-data"

	action="<?php print $_SERVER['PHP_SELF']?>" method="post">

<p><input type="hidden" name="MAX_FILE_SIZE" value="200000" />
 <input	type="file" name="pdfFile" /><br />
 <input type="text" name="FPath"/></br>

<br />

<input type="submit" value="upload!" /></p>

</form>



</div>

</body>

</html>



<?php

if ( isset( $_FILES['pdfFile'] ) ) {

	if ($_FILES['pdfFile']['type'] == "application/pdf") {

		$source_file = $_FILES['pdfFile']['tmp_name'];

		$dest_file = "upload/".$_FILES['pdfFile']['name'];

	
		echo $source_file;
		echo "<br>";
		echo $dest_file;
		echo "<br>";
		
			move_uploaded_file( $source_file, $dest_file )

			or die ("Error!!");

			if($_FILES['pdfFile']['error'] == 0) {

				print "Pdf file uploaded successfully!";

				print "<b><u>Details : </u></b><br/>";

				print "File Name : ".$_FILES['pdfFile']['name']."<br.>"."<br/>";

				print "File Size : ".$_FILES['pdfFile']['size']." bytes"."<br/>";

				print "File location : upload/".$_FILES['pdfFile']['name']."<br/>";

		}

	}

	else {

		if ( $_FILES['pdfFile']['type'] != "application/pdf") {

			print "Error occured while uploading file : ".$_FILES['pdfFile']['name']."<br/>";

			print "Invalid  file extension, should be pdf !!"."<br/>";

			print "Error Code : ".$_FILES['pdfFile']['error']."<br/>";

		}

	}

}

?>