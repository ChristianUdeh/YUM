<?php

// declaring  variables to prevent errors
$fname = ""; //Firstname
$lname = ""; //Lastname
$em  = "";//email
$em2 = "";//email2
$password ="";//password
$password2 = "";//password2
$date =""; //signupdate
$error_array = array(); //Holds error messages

//var_dump($_POST);

if(isset($_POST['register_button'])){

	//echo "hello";

	//Registration from values
	//Firstname

	$fname = strip_tags($_POST['reg_fname']);//Remove html tags
	$fname = str_replace(' ', '', $fname);// remove spaces
	$fname =  ucfirst(strtolower($fname));//Uppercase first
	$_SESSION['reg_fname'] = $fname; //stores first name into session variable


	//Lastname
	$lname = strip_tags($_POST['reg_lname']);//Remove html tags
	$lname = str_replace(' ', ' ', $lname);// remove spaces
	$lname =  ucfirst(strtolower($lname));//Uppercase first
	$_SESSION['reg_lname'] = $lname; //stores lastname into session variable


	//Email
	$em = strip_tags($_POST['reg_email']);//Remove html tags
	$em = str_replace(' ', ' ', $em);// remove spaces
	$em =  ucfirst(strtolower($em));//Uppercase first
	$_SESSION['reg_email'] = $em; //stores email into session variable

	//email 2
	$em2 = strip_tags($_POST['reg_email2']);//Remove html tags
	$em2 = str_replace(' ', ' ', $em2);// remove spaces
	$em2 =  ucfirst(strtolower($em2));//Uppercase first
	$_SESSION['reg_email2'] = $em2; //stores email2 into session variable


	//password
	$password = strip_tags($_POST['reg_password']);//Remove html tags

	//passsword2
	$password2 = strip_tags($_POST['reg_password2']);//Remove html tags
	



    $date = date("Y-m-d"); // current date



	if($em == $em2){
		//to check if email is in a valid format

		if(filter_var($em, FILTER_VALIDATE_EMAIL)) {

			$em = filter_var($em, FILTER_VALIDATE_EMAIL);

			//Check if email already exists

			$e_check = mysqli_query($con, "SELECT email FROM users WHERE email = '$em'");

			//count the number of rows returned
			$num_rows = mysqli_num_rows($e_check);


			if($num_rows > 0){

				array_push($error_array, "Email already in use<br>"); 
			}

		}
		else{
			array_push($error_array,  "Invalid Email format<br>");
		}

	}
	else{
		array_push($error_array,  "Emails don't match<br>");
	}

	if(strlen($fname) > 25 || strlen($fname) < 2){

		array_push($error_array, "Your first name must be between 2 and 25 characters<br>");

	}
	if(strlen($lname) > 25 || strlen($lname) < 2){

		array_push($error_array,  "Your last name must be between 2 and 25 characters<br>");
		
	}

	if ($password != $password2){
		array_push($error_array,  "Your password  do not match<br>");

	}
	else{
		if(preg_match('/[^A-Za-z0-9]/', $password)) {
			array_push($error_array, "Your password can only contain english characters or numbers<br>");
		}
	}

	if(strlen($password) > 30 || strlen($password) < 5) {
		array_push($error_array,  "Your password must be between 5 and 30 characters<br>");
	}



	if(empty($error_array)) {
		$password = md5($password);//encrypt the password before sending to the database

		//Generate username by concatenating first name and last name
		$username = strtolower($fname  . "_". $lname);
		$check_username_query =  mysqli_query($con, "SELECT username FROM users WHERE username='$username'");

		$i = 0;
		// if username does eixists add number to username
		while(mysqli_num_rows($check_username_query) != 0) {
			//echo "Error: " .  mysqli_error($con);
			$i++; //Add 1 to i
			$username  = $username . "_" . $i;
			$check_username_query = mysqli_query($con, "SELECT username FROM users WHERE username='$username'");
		}
       //profile picture assignment
		$rand = rand(1,2);//Random

		if($rand == 1)
		    $profile_pic = "assets/images/profile_pic/defaults/head_deep_blue.png";
	    else if ($rand == 2) 
	    	$profile_pic = "assets/images/profile_pic/defaults/head_emerald.png";



	    $query = mysqli_query($con , "INSERT INTO users VALUES (NULL,'$fname','$lname','$username','$em','$password','$date','$profile_pic','0','0','no',',')");

	    array_push($error_array,"<span style='color:  #14C800;'> You're all set! Go ahead and login!</span><br>");
	  //  echo "Error: " .  mysqli_error($con);


	    //Clear  session variable when its all good
	    $_SESSION['reg_fname'] = "";
	     $_SESSION['reg_lname'] = "";
	      $_SESSION['reg_email'] = "";
	       $_SESSION['reg_email2'] = "";
	        

	 }

  }
  ?>