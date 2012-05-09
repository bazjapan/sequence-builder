package com.pbsmediatech.sequenceBuilder.views.events
{
	import db.field.Field;
	
	import flash.events.Event;
	
	public class FieldEvent extends Event
	{
		public static const EVENT_ADD_FIELD_TO_SEQUENCE:String = "EVENT_ADD_FIELD_TO_SEQUENCE";
		public static const EVENT_UPDATE_FIELD_IN_SEQUENCE:String = "EVENT_UPDATE_FIELD_IN_SEQUENCE";
		public static const EVENT_REMOVE_FIELD_FROM_SEQUENCE:String = "EVENT_REMOVE_FIELD_FROM_SEQUENCE";
		public static const EVENT_SHOW_FOREIGN_KEYS_FOR_FIELD:String = "EVENT_SHOW_FOREIGN_KEYS_FOR_FIELD";

		
		public var callback:Function;
		public var field:Field;
		public function FieldEvent(type:String, f:Field, callback:Function = null, bubbles:Boolean=false)
		{
			this.field = f;
			this.callback = callback;
			super(type, bubbles, false);
		}
	}
}