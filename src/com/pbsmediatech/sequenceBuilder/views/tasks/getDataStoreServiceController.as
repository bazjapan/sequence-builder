package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import com.pbsmediatech.dto.ControllerSequence;
	import com.pbsmediatech.dto.Domain;
	import com.pbsmediatech.json.controllers.DataStoreServiceController;
	
	import com.pbsmediatech.sequenceBuilder.AppModel;

	public function getDataStoreServiceController(domain_label:String, dev:Boolean):DataStoreServiceController
	{
		
		return new DataStoreServiceController(getDomainAPIByLabel(domain_label, dev));
		function getDomainAPIByLabel(label:String, dev:Boolean):String
		{
			for each (var domain:Domain in AppModel.getInstance().domains)
			{
				if(domain.domain_label == label)
				{
					if(dev)
					{
						return domain.domain_dev_api_url;
					}
					return domain.domain_api_url;
				}
			}
			//default
			return AppModel.getInstance().service_base_url;
		}
	}
	
}