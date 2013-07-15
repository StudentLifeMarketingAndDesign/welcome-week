<?php
class EventPage extends Page {

	public static $db = array(
		'Time' => 'Text',
		'Location' => 'Text',
		'Official' => 'Boolean'
	);
	public static $has_one = array(
		'AboveImage' => 'Image',
		'BelowImage' => 'Image',
		'Image3' => 'Image'
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Content.Main', new TextField('Time'), 'Content');
		$fields->addFieldToTab('Root.Content.Main', new TextField('Location'), 'Content');
		$fields->addFieldToTab('Root.Content.Main', new CheckboxField('Official'), 'Content');
		//$fields->addFieldToTab("Root.Content.Images", new ImageField('AboveImage'));
		// $fields->addFieldToTab("Root.Content.Images", new ImageField('BelowImage'));
		$fields->addFieldToTab("Root.Content.Main", new ImageField('AboveImage'));
		$fields->addFieldToTab("Root.Content.Main", new ImageField('BelowImage'));
		$fields->addFieldToTab("Root.Content.Main", new ImageField('Image3'));
		return $fields;
   }
}
class EventPage_Controller extends Page_Controller {
	public function init() {
		parent::init();
	}
	
}