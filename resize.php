<?php
include("config.php");

if(isset($_POST['customer_add'])){
	$statement = $db->prepare("SHOW TABLE STATUS LIKE 'customer'");
	$statement->execute();
	$result = $statement->fetchAll();
	foreach($result as $row)
		$new_id = $row[10]; //10 fixed
		
	$up_filename=$_FILES["avatar"]["name"];
	$file_basename = substr($up_filename, 0, strripos($up_filename, '.')); // strip extention
	$file_ext = substr($up_filename, strripos($up_filename, '.')); // strip name
	$f1 = $new_id . $file_ext;
	
	if(($file_ext!='.png')&&($file_ext!='.jpg')&&($file_ext!='.jpeg')&&($file_ext!='.gif'))
		throw new Exception("Only jpg, jpeg, png and gif format images are allowed to upload.");

	move_uploaded_file($_FILES["avatar"]["tmp_name"],"uploads/customer/".$f1);
	
	$imagePath="uploads/customer/".$f1;
	if($src=imagecreatefromjpeg($imagePath)){
		list($width, $height) =getimagesize($imagePath);
	
		$newWidth=500;
		$newHeight=($height / $width) * $newWidth;
		
		$tmp = imagecreatetruecolor($newWidth,$newHeight);
		imagecopyresampled ( $tmp, $src, 0, 0, 0, 0, $newWidth, $newHeight, $width, $height);
		
		imagejpeg($tmp,"uploads/customer/".$f1,100);
	
	} else if($src=imagecreatefrompng($imagePath)){
		list($width, $height) =getimagesize($imagePath);
	
		$newWidth=500;
		$newHeight=($height / $width) * $newWidth;
		
		$tmp = imagecreatetruecolor($newWidth,$newHeight);
		imagecopyresampled ( $tmp, $src, 0, 0, 0, 0, $newWidth, $newHeight, $width, $height);
		
		imagepng($tmp, "uploads/customer/".$f1, 0);
	}   else if($src=imagecreatefromgif($imagePath)){
		list($width, $height) =getimagesize($imagePath);
	
		$newWidth=500;
		$newHeight=($height / $width) * $newWidth;
		
		$tmp = imagecreatetruecolor($newWidth,$newHeight);
		imagecopyresampled ( $tmp, $src, 0, 0, 0, 0, $newWidth, $newHeight, $width, $height);
		
		imagegif($tmp, "uploads/customer/".$f1);
	}
	imagedestroy($src);
	imagedestroy($tmp);
	
	$date = date('Y-m-d');
	date_default_timezone_set('Asia/Dacca'); 
	$time= date('h:i:s');
	
	 $statement = $db->prepare("INSERT INTO customer (customerNo,avatar,date,time) VALUES (?,?,?,?)");
     $statement->execute(array($_POST['customerNo'],$f1,$date,$time));
}
?>
<form class="form-horizontal tasi-form" id="" method="POST" action=""  enctype="multipart/form-data">
	<div class="form-group"> <!-- Customer Nr -->
		<label for="inputEmail1" class="col-lg-6 col-sm-6 control-label">Customer Nr</label>
		<div class="col-lg-6">
			<?php
			$projet_sn = date('Y-m-d');
			$year = substr($projet_sn,2,2);
			$month = substr($projet_sn,5,2);
			$statement = $db->prepare("SELECT id FROM customer ORDER BY id DESC LIMIT 1;");
			$statement->execute();
			$result = $statement->fetchAll(PDO::FETCH_ASSOC);
			foreach($result as $row){
			$last=$row['id']+1;
			?>
				<input type="text" class="form-control" name="customerNo" id="" value="<?php echo $year."-".$month."-"; printf("%04d",$last); ?>">
			<?php
			}
			?>	
		</div>
	</div>
	<div class="form-group"> <!-- Customer Nr -->
		<label for="" class="col-lg-6 col-sm-6 control-label">Picture</label>
		<div class="col-lg-6">
			<input id="file-3" class="file" name="avatar" type="file" multiple=false>
		</div>
	</div>
	<div class="col-lg-4 col-md-offset-2">	
		<button class="btn btn-lg btn-success " type="submit" name="customer_add">Add Customer</button>
	</div>
</form>