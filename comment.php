<?php
	class Comment extends ActiveRecord\Model {
		static $validates_length_of = array(
			array('name', 'within' => array(3,100)),
			array('content', 'within' => array(2,255))
		);
	}
?>
