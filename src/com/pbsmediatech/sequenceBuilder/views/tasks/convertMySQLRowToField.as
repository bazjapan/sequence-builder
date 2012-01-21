package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import db.field.Field;
	import db.MySQLRow;
	import db.getFieldTypesByMySQLType;
	import db.getMySQLFieldLength;

	public function convertMySQLRowToField(r:MySQLRow):Field
		{
		var f:Field = new Field;
		f.field_name = r.Field;
		f.is_ID = r.Key.toUpperCase() == "PRI";
		if(f.is_ID)
		{
			f.can_remove_by = true;
			f.can_search_by = true;
			f.can_update_by = true;

		}
		if(r.Extra == "on update CURRENT_TIMESTAMP")
		{
			f.is_last_mod = true;
		}
		
		var possible_types:Array = getFieldTypesByMySQLType(r.Type);
		f.field_type = possible_types[0];
		
		f.field_size = getMySQLFieldLength(r.Type);
		if(isNaN(f.field_size)){f.field_size = 0};
		
		return f;
		}
	
}