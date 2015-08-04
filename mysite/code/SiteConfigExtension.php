<?php

class SiteConfigExtension extends DataExtension {

	static $db = array(
		'Analytics' =>'Text'
	);

	static $has_one = array(

	);

	public function updateCMSFields(FieldList $fields){
		$fields->addFieldToTab('Root.Main', new TextField('Analytics', 'Google Analytics Tracking ID'));

		return $fields;

	}

}
class SiteConfigExtensionPage_Controller extends Page_Controller {

	public function init() {
		parent::init();
	}

}