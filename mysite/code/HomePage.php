<?php
class HomePage extends Page {

	public static $db = array(
	);

	public static $has_one = array(
	);

}
class HomePage_Controller extends Page_Controller {
	public static $allowed_actions = array (
	);
	public function init() {
		parent::init();
	}
}