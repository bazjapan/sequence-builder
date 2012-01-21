package com.pbsmediatech.sequenceBuilder.views.tasks
{
	public function getArrayOfLabelsbyParam(param:String, source:Array):Array
		{
			var list:Array = [];
		for each (var obj:Object in source)
		{
			if(obj.hasOwnProperty(param))
			{
		list.push(obj[param]);	
			}
		}
		return list;	
		}
	
}