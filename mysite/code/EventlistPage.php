<?php
class EventlistPage extends Page {

	public static $db = array(
	);

	public static $has_one = array(
	);
	
	public static $allowed_children = array('EventdayPage');

}
class EventlistPage_Controller extends Page_Controller {
	public static $allowed_actions = array (
	);
	public function init() {
		parent::init();
	}
}