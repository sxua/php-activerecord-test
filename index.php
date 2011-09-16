<!doctype html>
<html>
	<head>
		<title><?php echo (isset($_GET['id']) && !empty($_GET['id'])) ? 'Single post' : 'All posts'; ?></title>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<link href="screen.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div class="container">
<?php
	require 'config.php';
	$post = new Posts_Controller;
	if (isset($_GET['id']) && !empty($_GET['id'])) {
		echo $post('show',$_GET['id']);
	} elseif (isset($_REQUEST['action']) && isset($_REQUEST['post'])) {
		$comment = new Comments_Controller;
		switch ($_REQUEST['action']) {
			case 'comment_add':
				$comment('create',array('post_id' => $_REQUEST['post'],'name' => $_REQUEST['name'],'content' => $_REQUEST['content']));
			break;
			case 'comment_remove':
				$comment('remove',$_REQUEST['comment']);
			break;
		}
		header('location:'.$_SERVER['SCRIPT_NAME'].'?id='.$_REQUEST['post']);
	} else {
		echo '<h1>All posts</h1>'."\n".
		'<ul>'."\n".
		$post('index')."\n".
		'</ul>';
	}
?>
		</div>
	</body>
</html>
