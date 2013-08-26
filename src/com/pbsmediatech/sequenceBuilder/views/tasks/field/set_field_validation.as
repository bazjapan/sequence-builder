package com.pbsmediatech.sequenceBuilder.views.tasks.field
{
	import com.maccherone.json.MJSON;
	import com.pbsmediatech.sequenceBuilder.AppModel;
	import com.pbsmediatech.sequenceBuilder.views.components.field.validation.FieldValidation;
	import com.pbsmediatech.sequenceBuilder.views.components.field.validation.ValidationSetter;
	
	import db.field.Field;
	
	import flash.display.DisplayObject;
	
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;

	public function set_field_validation(f:Field, disObj:DisplayObject, complete:Function):void
	{
		
	
		
		
		var context:DisplayObject = disObj;
		var fv:FieldValidation = AppModel.getInstance().fieldValidation;
		var vs:ValidationSetter = new ValidationSetter();
		PopUpManager.addPopUp(vs,context,true);
		PopUpManager.centerPopUp(vs);
		vs.title = "Validation for "+f.field_name;
		vs.validationConfig = fv;
		vs.setFieldType(f.field_type);
		vs.saveFunc = function(validators:Object):void{
					trace(MJSON.encode(validators,true));
					f.validation = validators;
					removePop();
					complete(f);
		};
		vs.setCurrentValidation(f.validation);
		vs.addEventListener(CloseEvent.CLOSE, function(cEvt:CloseEvent):void{
			removePop();
		});
		
		var removePop:Function = function():void{
			
			PopUpManager.removePopUp(vs);
			vs = null;
			
		}
		
		
	}
	
}