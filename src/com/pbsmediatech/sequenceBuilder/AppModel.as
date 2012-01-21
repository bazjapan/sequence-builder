package com.pbsmediatech.sequenceBuilder
{
	
	
	import com.pbsmediatech.dto.ControllerSequence;
	
	import db.Datastore;
	import db.field.Field;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	
	import utils.date.now;
	import utils.text.newLine;
	import utils.timestamp.dateToTimestamp;
	
	

	

	
	
	
	[Bindable]
	public class AppModel 
	{
		private static var modelLocator:AppModel;
		
		public static function getInstance():AppModel
		{
			if (modelLocator == null)
			{
				modelLocator=new AppModel();
				
			}
			return modelLocator;
		}
		
		public function AppModel()
		{
			if (modelLocator != null)
			{
				throw new Error("Only one MainModel instance should be instantiated");
			}
		}
		
		//application version
		public var sequence_maker_version:Number = 0;
		public var view_maker_version:Number = 0;
		
		//RULES
		//Datastore
		public var MIN_COL_NAME_LENGTH:int  = 2;
		public var MIN_TABLE_NAME_LENGTH:int  = 2;
		public var MIN_TABLE_KEY_LENGTH:int  = 2;
	

		
		public var datastore:Datastore = new Datastore;//holds column info about the current data store for the loaded sequence
		
		public var dev:Boolean = false;
		public var service_base_url:String = "http://www.pbsmediatech.com/cms/api/";
		public var sqlRows:ArrayCollection = new ArrayCollection();
		public var available_fields_types:ArrayList = new ArrayList([Field.VARCHAR, Field.ID, Field.DATE_TIME, Field.DECIMAL, Field.TEXT, Field.GEO, Field.INT, Field.BOOLEAN, Field.LIST, Field.JSONOBJ,  Field.JSONARR, Field.EMAIL ,Field.URL, Field.IMAGE_URL, Field.AUDIO_URL, Field.VIDEO_URL]);
		
		
		
		public var domains:ArrayCollection = new ArrayCollection();
			//new ArrayCollection([{domain_label:"jp.unchained"},{domain_label:"jp.unchained.partner"},{domain_label:"jp.wordsmart"},{domain_label:"jp.wordsmart.partner"},{domain_label:"com.pbsmediatech"}]);

		public var loaded_sequence:ControllerSequence;
		public var fields:ArrayCollection = new ArrayCollection;
		public var data_views:ArrayCollection = new ArrayCollection;
		public var saved_sequences:ArrayCollection = new ArrayCollection();
		
		//code
		public var sql_text:String;
		public var json_text:String;
		public var php_controller_text:String;
		public var as3_controller_text:String;
		public var js_controller_text:String;
		public var as3_class_text:String;
		public var as3_ResultHelper_text:String;
		public var as3_utils_text:String;
		public var as3_Event_text:String;
		public var csv_text:String;
		public var copy_area_text:String = '';
		public var session_log_text:String = '';
		
		public var excludes:Array = []; //excluded auto-generated methods - found in generated_method_info
		
		public var generated_methods:ArrayCollection = new ArrayCollection;
		public var added_methods:ArrayCollection = new ArrayCollection;
		
		
		public function log_me(text_to_log:String):void
		{
			var to_log:String = dateToTimestamp(now())+" :";
			to_log += text_to_log+newLine();
			session_log_text+=to_log;
		}
	
	}
}
