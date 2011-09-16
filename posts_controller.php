<?php
	class Posts_Controller extends Generic_Controller {
		public function index() {
			$posts = Post::find('all');
			$output = '';
			foreach($posts as $post)
				$output .= $this->view($post,true);
			return $output;
		}
		
		public function show($id) {
			$post = Post::find($id);
			return $this->view($post,false);
		}
		
		private function view($post,$list) {
			$comments = new Comments_Controller;
			if ($list) {
				$output = '<li>'."\n".
				'<h2><a href="'.$_SERVER['SCRIPT_NAME'].'?id='.$post->id.'">'.$post->title.'</a></h2>'."\n".
				'<span class="date">'.$this->format_date($post->created_at).'</span>'."\n".
				'<p>'.$this->truncate($post->content,100).'</p>'."\n".
				'<span>'.$comments('size',$post->id).' comments</span>'."\n".
				'</li>'."\n";
			} else {
				$output = '<h2>'.$post->title.'</h2>'."\n".
				'<span class="date">'.$this->format_date($post->created_at).'</span>'."\n".
				'<p>'.strip_tags($post->content,'<h3><a><img><b><em><i><strong><p><br>').'</p>'."\n".
				'<div class="comments">'."\n".
				'<ul>'."\n".
				$comments('feed',$post->id)."\n".
				'</ul>'."\n".
				'<div class="add-comment">'."\n".
				$comments('form',$post->id)."\n".
				'</div>'."\n".
				'</div>';
			}
			return $output;
		}
		
		public function create($args) {
			$post = Post::create($args);
		}
	}
?>
