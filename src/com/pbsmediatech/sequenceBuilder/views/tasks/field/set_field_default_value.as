package com.pbsmediatech.sequenceBuilder.views.tasks.field
{
	import com.pbsmediatech.sequenceBuilder.views.components.field.defaults.DefaultSetter;
	
	import db.field.Field;
	
	import flash.display.DisplayObject;
	
	import mx.events.CloseEvent;
	import mx.events.FlexEvent;
	import mx.managers.PopUpManager;

	public function set_field_default_value(f:Field, disObj:DisplayObject, complete:Function):void
	{
		var context:DisplayObject = disObj;
		var vs:DefaultSetter = new DefaultSetter();
		vs.addEventListener(FlexEvent.CREATION_COMPLETE, function(e:FlexEvent):void{
			vs.setField(f);
		})
		PopUpManager.addPopUp(vs,context,true);
		PopUpManager.centerPopUp(vs);
		vs.title = "Default Value for "+f.field_name;
		
		
		vs.saveFunc = function(val:Object):void{
			f.default_value = val
			removePop();
			complete(f);
		};
	
		vs.addEventListener(CloseEvent.CLOSE, function(cEvt:CloseEvent):void{
			removePop();
		});
		
		var removePop:Function = function():void{
			
			PopUpManager.removePopUp(vs);
			vs = null;
			
		}
		
	}
	
}