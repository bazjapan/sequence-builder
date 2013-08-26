package com.pbsmediatech.sequenceBuilder.views.components.field.validation
{

	
	import com.maccherone.json.JSONEncoder;
	
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class FieldValidation
	{
		public function FieldValidation(ready:Function = null)
		{
			var request:URLRequest = new URLRequest("fieldTypes.json");
			var loader:URLLoader = new URLLoader();
			loader.load(request);
			loader.addEventListener(Event.COMPLETE, function(e:Event):void
			{
				validationConfig = JSON.stringify(String(loader.data));
				
			
					if(ready != null){ready()}
			})
			
		}
		
		public var validationConfig:Object;
		
		
		public function getValidators():Object{
		try{
			return validationConfig.validators;
		}catch(e:Error){
			
			return null;
		}
		return null;
		}
		public function getValidatorByName(name:String):Object{
			try{
				return validationConfig.validators[name];
				}catch(e:Error){
				
				return null;
			}
			return null;
		}
		public function getFields():Object{
			try{
				return validationConfig.fields;
				}catch(e:Error){
				
				return null;
			}
			return null;
		}
		public function getFieldsByName(name:String):Object{
			try{
			return validationConfig.fields[name];
			}catch(e:Error){
				
				return null;
			}
			return null;
		}
		public function getAvailableValidatorsByFieldName(name:String):Object{
			try{
				return validationConfig.fields[name]["available_validators"];
			}catch(e:Error){
				
				return null;
			}
			return null;
		}
	}
}