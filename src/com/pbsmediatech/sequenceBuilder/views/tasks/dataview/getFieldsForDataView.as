package com.pbsmediatech.sequenceBuilder.views.tasks.dataview
{
	import com.pbsmediatech.sequenceBuilder.AppModel;
	
	import db.field.Field;
	
	import utils.array.arrayContainsValue;

	public function getFieldsForDataView(name:String):Array
	{
		var fs:Array = [];
		for each (var f:Field in AppModel.getInstance().fields)
		{
		if(f.is_ID || arrayContainsValue(f.dataviews,name)){
			
			fs.push(f);
		}	
		
		}
		return fs;
	}
	
}