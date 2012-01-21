package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import db.field.Field;
	import db.field.IDFieldSize;

	public function getDefaultFieldSizeByFieldType(field_type:String, current_size:Number):Number
	{
		if(field_type == Field.ID){return IDFieldSize()};
		if(field_type == Field.GEO){return 10.6};
		if(field_type == Field.BOOLEAN){return 1};
		if(field_type == Field.DATE_TIME ||
			field_type == Field.JSONOBJ ||
			field_type == Field.TEXT ||
			field_type == Field.TIMESTAMP ||
			field_type == Field.LIST
		){return 0};
		if(field_type == Field.URL ||field_type == Field.IMAGE_URL || field_type == Field.AUDIO_URL ||
			field_type == Field.VIDEO_URL
		){return 150};
		
		return current_size;
	}
	
}