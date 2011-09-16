<?php
	class Generic_Controller {
		public function __invoke() {
			$args = func_get_args();
			if (method_exists($this,$args[0]))
				if (!isset($args[1]))
					$args[1] = null;
				return $this->{$args[0]}($args[1]);
		}
		
		public function format_date($date) {
			return date('d.m.Y H:i',strtotime($date));
		}
		
		public function truncate($string,$chars) {
			list($new_string) = explode("\n", wordwrap(strip_tags($string), $chars, "\n", false));
			return $new_string.'...';
		}
	}
?>
