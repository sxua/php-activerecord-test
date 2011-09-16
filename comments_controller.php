<?php
	class Comments_Controller extends Generic_Controller {
		public function feed($post_id) {
			$comments = Comment::find('all',array('conditions' => array('post_id=?',$post_id)));
			$output = '';
			foreach($comments as $comment)
				$output .= $this->view($comment);
			return $output;
		}
		
		public function size($post_id) {
			$comments = Comment::find('all',array('conditions' => array('post_id=?',$post_id)));
			return sizeof($comments);
		}
		
		private function view($comment) {
			$output = '<li>'."\n".
			'<span class="author">'.$comment->name.'</span>'."\n".
			'<span class="date">'.$this->format_date($comment->created_at).'</span>'."\n".
			'<span class="remove"><a href="'.$_SERVER['SCRIPT_NAME'].'?action=comment_remove&post='.$comment->post_id.'&comment='.$comment->id.'">Remove</a></span>'."\n".
			'<p class="comment">'.strip_tags($comment->content).'</p>'."\n".
			'</li>'."\n";
			return $output;
		}
		
		public function remove($id) {
			$comment = Comment::find($id);
			$comment->delete();
		}
		
		public function form($post_id) {
			$form = '<form action="index.php" method="post">'."\n".
			'<label for="commenter_name">Your name:</label>'."\n".
			'<input id="commenter_name" type="text" name="name" />'."\n".
			'<label for="comment_text">Your comment:</label>'."\n".
			'<textarea id="comment_text" name="content"></textarea>'."\n".
			'<br />'."\n".
			'<input type="submit" value="Add comment" />'."\n".
			'<input type="hidden" name="action" value="comment_add" />'."\n".
			'<input type="hidden" name="post" value="'.$post_id.'" />'."\n".
			'</form>';
			return $form;
		}
		
		public function create($args) {
			$comment = Comment::create($args);
		}
	}
?>
