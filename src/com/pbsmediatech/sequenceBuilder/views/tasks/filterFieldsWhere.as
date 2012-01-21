package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import db.field.Field;
	
	
	public function filterFieldsWhere(fields:Array, param:String, value:*):Array
		{
			var toRet:Array = [];
		 	for each (var f:Field in fields)
			{
				if(f[param]==value)
				{
					toRet.push(f);
				}
			}
			return toRet;
		}
	
}