package com.pbsmediatech.sequenceBuilder.views.components.field.shared_actions
{
	import com.maccherone.json.MJSON;
	import com.pbsmediatech.sequenceBuilder.views.tasks.show_copy_window_pop;
	
	import db.field.Field;
	
	import flash.display.DisplayObject;

	public function show_field_json(f:Field, parent:DisplayObject):void
	{
		if(!f){return};
		var output:String = "";
		output = MJSON.encode(f,true);
		var title:String = "Config JSON for "+f["field_name"];
		show_copy_window_pop(title,output,parent);
		
	}
	
}