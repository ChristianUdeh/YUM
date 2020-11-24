<?php
require 'config/config.php';
include("includes/classes/User.php");
include("includes/classes/Post.php");
include("includes/classes/Message.php");
include("includes/classes/Notification.php");



if(isset($_SESSION['username'])){


	$userLoggedIn = $_SESSION['username'];
	$user_details_query= mysqli_query($con,"SELECT * FROM users WHERE username='$userLoggedIn'");
	$user= mysqli_fetch_array($user_details_query);
}
else{

	header("Location: register.php");
}
?>


<html>
<head>
	<title>Yum</title>
	<!-- Javascript -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/yum.js"></script>
	<script src="assets/js/jquery.Jcrop.js"></script>
	<script src="assets/js/jcrop_bits.js"></script>



	<!-- Css -->
	<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
	<link rel="stylesheet" href="assets/css/jquery.Jcrop.css" type="text/css" />
	<!--<script src="https://kit.fontawesome.com/7ccc60851c.js" crossorigin="anonymous"></script>-->

	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">




</head>
<body>
	<div  class="top_bar">
		<div class="logo">
			<a href="index.php">YUM</a>

		</div >



		<div class="search">
			<form name="search_form"  action="search.php" method="GET">
				<input type="text" onkeyup="getLiveSearchUsers(this.value, '<?php echo $userLoggedIn; ?>')" name="q" placeholder="Search..." autocomplete="off" id="search_text_input">

				<div class="button_holder">
					<img src="assets/icons/magnifying_glass.png" >
				</div>
			</form>

			<div class="search_results">

			</div>

			<div class="search_results_footer_empty">

			</div>

		</div>

		<nav>
			<?php
			//  unread messages
			$messages =  new Message($con, $userLoggedIn);
			$num_messages = $messages->getUnreadNumber();
			//unread  notification
			$notifications =  new Notification($con, $userLoggedIn);
			$num_notifications = $notifications->getUnreadNumber();


			//unread  notification
			$user_obj =  new User($con, $userLoggedIn);
			$num_requests = $user_obj->getNumberOfFriendRequests();




			 ?>
			<div>
					<a href="<?php echo $userLoggedIn; ?>">
				<?php  echo $user['first_name']; ?>
			</a>
			<a href="index.php">
				<i class="las la-home "></i>
			</a>
		<a href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn;?>','message')">
				<i class="lar la-envelope"></i>
				<?php
				if  ($num_messages > 0)
				echo '<span class="notification_badge" id="unread_message">' .$num_messages .' </span>';
			?>

			</a>
			<a href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn;?>','notification')">
				<i class="lar la-bell "></i>
				<?php
				if  ($num_notifications > 0)
				echo '<span class="notification_badge" id="unread_notification">' .$num_notifications .' </span>';
			?>

			</a>
			<a href="requests.php">
				<i class="las la-users"></i>
				<?php
				if  ($num_requests > 0)
				echo '<span class="notification_badge" id="unread_requests">' .$num_requests .' </span>';
			?>

			</a>
			<a href="settings.php">
				<i class="las la-cog"></i>

			</a>

				<a href="includes/handlers/logout.php">
				<i class="las la-sign-out-alt"></i>

			</a>

			</div>


		</nav>

		<div class="dropdown_data_window" style="height:0px; border:none;"></div>
			<input type="hidden" id="dropdown_data_type" value="">



	</div>
	<script>

	var userLoggedIn= '<?php echo $userLoggedIn; ?>';
	$(document).ready(function(){

		//original ajax request for loading first posts

		$('.dropdown_data_window').scroll(function(){
			var  inner_height = $('.dropdown_data_window').innerHeight(); // div  containing data
			var  scroll_top = $('.dropdown_data_window').scrollTop();
			var page = $('.dropdown_data_window').find('.nextPageDropdownData').val();
			var noMoreData = $('.dropdown_data_window').find('.noMoreDropdownData').val();


			if ((scroll_top + inner_height >= $('.dropdown_data_window')[0].scrollHeight) &&noMoreData =='false') {

				var pageName;
				var type= $('#dropdown_data_type').val();

				if (type == 'notification')
					pageName = "ajax_load_notification.php";
					else  if(type = 'message')
					pageName ="ajax_load_messages.php"



				 var ajaxReq = $.ajax({
					 url: "includes/handlers/" + pageName,
					 type:"POST",
					 data:"page=" + page + "&userLoggedIn=" + userLoggedIn,
					 cache:false,

					 success: function(response){
						 $('.dropdown_data_window').find('.nextPageDropdownData').remove();// Removes current .nextPage
						 $('.dropdown_data_window').find('.noMoreDropdownData').remove();// Removes current .nextPage



						 $('.dropdown_data_window').append(response);
					 }

				 });



			}//end if

			return false;


		});



	});



	</script>


<div class ="wrapper">
