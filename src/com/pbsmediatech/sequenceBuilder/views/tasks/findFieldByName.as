package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import db.field.Field;
	
	import com.pbsmediatech.sequenceBuilder.AppModel;

	public function findFieldByName(field_name:String):Field
	{
		for each (var f:Field in AppModel.getInstance().fields)
		{
			if(f.field_name == field_name)
			{
				return f;
			}
		}
		return null;
	}
	
}