package com.pbsmediatech.sequenceBuilder.views.tasks.store
{
	import com.pbsmediatech.code.method_builders.sql.makeSQLUpdateColumnScript;
	
	import db.MySQLRow;
	import db.field.Field;
	
	import flash.display.DisplayObject;
	
	import com.pbsmediatech.sequenceBuilder.AppModel;
	import com.pbsmediatech.sequenceBuilder.views.components.EnterNamePop;
	import com.pbsmediatech.sequenceBuilder.views.tasks.convertMySQLRowToField;
	
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;

	public function rename_column_in_store(component:DisplayObject,  selected_row:MySQLRow, table_name:String, commit_command_to_store:Function):void
	{
		var namePop:EnterNamePop= new EnterNamePop;
		PopUpManager.addPopUp(namePop, component, true);
		PopUpManager.centerPopUp(namePop);
		namePop.title = "Enter New Column Name For "+selected_row.Field;
		namePop.my_name.text = selected_row.Field;
		namePop.minLength = AppModel.getInstance().MIN_COL_NAME_LENGTH;
		namePop.happy = function(field_name:String):void
		{
			var old_field_name:String = selected_row.Field;
			if(field_name == old_field_name){removePop()}else{
				var converted:Field = convertMySQLRowToField(selected_row);
				var sql:String = makeSQLUpdateColumnScript(table_name,old_field_name,field_name,converted.field_type,converted.field_size, converted.is_last_mod);
				commit_command_to_store(sql);
				removePop();
			}
		}
		namePop.addEventListener(CloseEvent.CLOSE, function(ce:CloseEvent):void
		{
			removePop()
		});
		var removePop:Function = function():void{
			
			PopUpManager.removePopUp(namePop);
		}
	}
	
}