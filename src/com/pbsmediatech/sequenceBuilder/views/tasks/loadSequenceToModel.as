package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import com.adobe.serialization.json.JSON;
	import com.pbsmediatech.dto.ControllerSequence;
	import com.pbsmediatech.sequenceBuilder.AppModel;
	
	import db.dataview.DataView;
	import db.field.Field;
	
	import utils.object.isNull;


	public function loadSequenceToModel(seq:ControllerSequence):ControllerSequence
	{
		AppModel.getInstance().fields.removeAll();
		AppModel.getInstance().data_views.removeAll();
		
		var loaded_sequence:ControllerSequence = seq;
		//var fields_array:Array = JSON.decode(loaded_sequence.sequence_fields);
		var fields_array:Array = loaded_sequence.sequence_fields;
		var data_views_array:Array = [];
		
		
			data_views_array = loaded_sequence.sequence_views || [];
		trace(data_views_array)
		
		
		for each (var obj:Object in fields_array)
		{
			AppModel.getInstance().fields.addItem(new Field(obj));
		}
		AppModel.getInstance().loaded_sequence = loaded_sequence;
		
		for each (var dwJson:Object in data_views_array)
		{
			trace("dwJson "+dwJson)
			var dw:db.dataview.DataView = new DataView(dwJson);
			trace(dw.name);	
			if(dw.name !=""){
			AppModel.getInstance().data_views.addItem(dw);
			}
		}
		
		
		//fill generated method info
		if(loaded_sequence.generated_method_info !=null && loaded_sequence.generated_method_info != "")
		{
			var generated_method_info:Object = loaded_sequence.generated_method_info;
			if(generated_method_info.hasOwnProperty("excludes"))
			{
				AppModel.getInstance().excludes = generated_method_info.excludes;
			}
			if(generated_method_info.hasOwnProperty("user_built"))
			{
				for each (var user_built_method:Object in generated_method_info.user_built)
				{
					trace(user_built_method.toString())
					//AppModel.getInstance().added_methods.addItem(new CustomMethodDescription());
				}
			}
		}
		
		return loaded_sequence;
	}
	
}