<?php 
	session_start();

    // importing db connection
    include '/includes/core/db/db.php';

    // importing modules

	
	include 'user.php';
	include 'store.php';
	include 'coupon.php';
	include 'deals.php';
    include 'events.php';
    include 'mail.php';
    include 'notification.php';
    include 'banner.php';	


    // calling classes as objects.
  	global $pdo;
  	define('BASE_URL', 'http://localhost/');
?>                                                   
