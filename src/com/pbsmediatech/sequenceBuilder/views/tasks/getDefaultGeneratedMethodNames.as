package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import db.field.Field;

	public function getDefaultGeneratedMethodNames(object_name:String, fields:Array):Array
		{
		//defaults add and get_all
		var methodNames:Array = ["add_"+object_name];
		methodNames.push("get_all_"+object_name+"s");
		//get
		for each (var searchable_field:Field in fields)
		{
			if(searchable_field.can_search_by)
			{
				methodNames.push( "get_"+object_name+"s_by_"+searchable_field.field_name);
			}
		}
		//update
		for each (var updateable_where_field:Field in fields)
		{
			if(updateable_where_field.can_update_by)
			{
				methodNames.push( "update_"+object_name+"s_by_"+updateable_where_field.field_name);
			}
		}
		//remove
		for each (var remove_where_field:Field in fields)
		{
			if(remove_where_field.can_remove_by)
			{
				methodNames.push( "remove_"+object_name+"s_by_"+remove_where_field.field_name);
			}
		}
		return methodNames;
		
		}
	
}