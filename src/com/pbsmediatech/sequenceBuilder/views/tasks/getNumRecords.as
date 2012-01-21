package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import com.adobe.serialization.json.JSON;
	
	import com.pbsmediatech.sequenceBuilder.AppModel;
	
	import com.pbsmediatech.json.controllers.DataStoreServiceController;
	import com.pbsmediatech.json.utils.JSONResultHelper2;
	import com.pbsmediatech.json.utils.extractResult;
	
	import mx.rpc.events.ResultEvent;

	public function getNumRecords(table_name:String, callback:Function):void
	{
		var dssc:DataStoreServiceController = new DataStoreServiceController(AppModel.getInstance().service_base_url);
		
		dssc.get_number_records_in_table({table_name:table_name}, function(evt:ResultEvent):void
		{
			if(new JSONResultHelper2().resultIsGood(extractResult(evt)))
				{
					var resultObj:Object = JSON.decode(extractResult(evt));
					callback(resultObj["result"]);
				}
			
		});	
						
	}
	
}