<?php
class CouncilMember extends Page {

	private static $db = array(
		"Name" => "Text",
		"Position" => "Text",
		"EmailAddress" => "Text",

	);

	private static $has_one = array(
		"CouncilPhoto" => "Image",
	);


	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->removeByName("Content");
		$fields->removeByName("Metadata");
		$fields->removeByName("PagePhoto");

		$fields->addFieldToTab("Root.Main", new TextField("Position", "Position"));
		$fields->addFieldToTab("Root.Main", new TextField("EmailAddress", "Email address"));
		$fields->addFieldToTab("Root.Main", new UploadField("CouncilPhoto", "Photo"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Description"));

		return $fields;

	}

	//private static $allowed_children = array("");

}
class CouncilMember_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();


	}

}