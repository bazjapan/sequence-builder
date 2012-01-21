package com.pbsmediatech.sequenceBuilder.views.components
{
	import db.field.Field;
	
	import spark.components.DropDownList;
	
	public class FieldTypeDropDownList extends DropDownList
	{
		public function FieldTypeDropDownList()
		{
			super();
		}
		override public function set selectedItem(value:*):void
		{
			var toSelect:* = value == Field.TIMESTAMP?Field.DATE_TIME:value;
			super.selectedItem = toSelect;
		}
	}
}