<?php

class SiteConfigExtension extends DataExtension {

	static $db = array(

	);

	static $has_one = array(

	);

	public function updateCMSFields(FieldList $fields){


		return $fields;

	}

}
class SiteConfigExtensionPage_Controller extends Page_Controller {

	public function init() {
		parent::init();
	}

}