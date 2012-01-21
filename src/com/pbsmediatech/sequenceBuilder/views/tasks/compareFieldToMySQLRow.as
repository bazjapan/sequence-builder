package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import db.field.Field;
	import db.MySQLRow;
	import db.getFieldTypesByMySQLType;
	import db.getMySQLFieldLength;

	public function compareFieldToMySQLRow(f:Field, r:MySQLRow):Boolean
		{
			//returns true if same;
		
			//name
			if(f.field_name != r.Field){return false;};
			
			//field type
			var allowable_fields:Array = getFieldTypesByMySQLType(r.Type);
			var field_is_same_as_remote:Boolean
			for each (var allowable_field:String in allowable_fields)
			{
				if(f.field_type == allowable_field)
				{
					field_is_same_as_remote = true;
					break;
				}
			}
			if(!field_is_same_as_remote){return false};
			
			//tiemstamp and date added stuff
			if(f.is_last_mod)
			{
				var same1:Boolean = r.Extra == "on update CURRENT_TIMESTAMP";
				if(!same1)return false;
			}
			
			//pro key stuff
			if(f.is_ID)
			{
				var same3:Boolean = r.Key.toUpperCase() == "PRI";
				if(!same3)return false;
			}
			
			var length_of_remote_field:Number = getMySQLFieldLength(r.Type);
			var length_matches:Boolean = length_of_remote_field == f.field_size;
			return length_of_remote_field == f.field_size;
		
	}
}