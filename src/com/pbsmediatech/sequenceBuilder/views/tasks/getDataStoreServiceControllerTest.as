package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import com.pbsmediatech.dto.ControllerSequence;
	import com.pbsmediatech.dto.Domain;
	import com.pbsmediatech.json.controllers.DataStoreServiceController;
	
	import com.pbsmediatech.sequenceBuilder.AppModel;

	public function getDataStoreServiceControllerTest(domains:Array, success_callback:Function, fail_callback:Function):void
	{
		//does the the app have a datastoore service for every listed domain?
		
		for each (var d:Domain in AppModel.getInstance().domains)
		{
			var controller:DataStoreServiceController = getDataStoreServiceController(d.domain_label, false);
			if(controller != null){success_callback("success");}
			else{fail_callback("fail");}
		}
		
	}

}