package com.pbsmediatech.sequenceBuilder.views.components.field.shared_actions
{import com.maccherone.json.MJSON;
import com.pbsmediatech.sequenceBuilder.views.tasks.show_copy_window_pop;

import db.field.Field;
import db.field.utils.code.create_object_literal;

import flash.display.DisplayObject;
	
	
		public function show_object_literal(fs:Array, parent:DisplayObject):void
		{
			if(!fs){return};
			var output:String = create_object_literal(fs);
			var title:String = "Object Literal"
			show_copy_window_pop(title,output,parent);
		}
	
}