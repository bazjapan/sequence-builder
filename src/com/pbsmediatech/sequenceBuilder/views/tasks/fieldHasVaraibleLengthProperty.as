package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import db.field.Field;

	public function fieldHasVaraibleLengthProperty(field_type:String):Boolean
		{
		
		return field_type == Field.VARCHAR || field_type == Field.DECIMAL || field_type == Field.INT;
		
		return false;
		}
	
}