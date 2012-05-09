package com.pbsmediatech.sequenceBuilder.views.tasks.field.system
{	import com.pbsmediatech.sequenceBuilder.AppModel;
import com.pbsmediatech.sequenceBuilder.views.components.field.system.ConnectorSetter;

import db.field.Field;

import flash.display.DisplayObject;

import mx.core.Application;
import mx.events.CloseEvent;
import mx.managers.PopUpManager;

import spark.components.TitleWindow;


public function show_connection_setter(field:Field, new_conn:Boolean,add_mirror_callback, cb:Function = null):void
		{
			var csWindow:TitleWindow;
			var csc:ConnectorSetter;
			
				csc = new ConnectorSetter();
				csWindow = new TitleWindow();
				csWindow.addElement(csc);
				
				csc.add_mirror_func = add_mirror_callback;
				
				csc.save_func = function():void{
					close();
					field.fk_target = {};
					field.fk_target["ref"] = csc.get_ref();
					field.fk_target["type"] = csc.get_type();
					field.field_name = csc.get_name();
					cb(field);
					
					
				}
				csc.cancel_func = function():void{
					close();
				}
				csWindow.addEventListener(CloseEvent.CLOSE, function(ce:CloseEvent):void
				{
					close()
				});
			
			
			function close():void{
				PopUpManager.removePopUp(csWindow);
			}
			
			csWindow.title = "Edit Connection";
			
			
			csc.set_field(field, new_conn);
			csc.set_sequence(AppModel.getInstance().loaded_sequence);
			PopUpManager.addPopUp(csWindow, DisplayObject(Application.application),true);
			PopUpManager.centerPopUp(csWindow);
		
		
		
	}
	
}