package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import db.MySQLRow;
	
	import com.pbsmediatech.sequenceBuilder.AppModel;
	
	import com.pbsmediatech.json.controllers.DataStoreServiceController;
	import com.pbsmediatech.json.utils.JSONResultHelper2;
	import com.pbsmediatech.json.utils.extractResult;
	
	import mx.rpc.events.ResultEvent;

	public function getFieldInfo(table_name:String, field_name:String, callback:Function):void
	{
		
		new DataStoreServiceController(
			AppModel.getInstance().service_base_url).get_field_info({table_name:table_name, field_name:field_name},
				function(evt:ResultEvent):void
				{
					var results:Array = new JSONResultHelper2().resultToArray(extractResult(evt));
				
					if(results.length>0)
					{
						callback(new MySQLRow(results[0]))
					}
					else
					{
						callback(null);
					}
					
				});
							
				
	}
	
}