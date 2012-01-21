package com.pbsmediatech.sequenceBuilder.views.tasks.forms
{
	import db.field.Field;
	import db.getFieldTypeLength;
	
	import mx.controls.TextArea;
	import mx.core.IVisualElement;
	
	import spark.components.Group;
	import spark.components.HGroup;
	import spark.components.Label;
	import spark.components.NumericStepper;
	import spark.components.TextInput;
	import spark.components.VGroup;
	
	import utils.text.newLine;

	public class getAS3FormElementFromField
	{
		public function getAS3FormElementFromField(object_name:String, f:Field, vertical:Boolean = false):Group
		{
			
			
			var theText:String;
			
			if(vertical)
			{
				theText = '<s:VGroup width="100%">'
			}
			else
			{
				theText = '<s:HGroup width="100%">'
			}
			
			//fields
			if(f.field_type == Field.AUDIO_URL 
				||f.field_type == Field.IMAGE_URL 
				||f.field_type == Field.URL
				||f.field_type == Field.VIDEO_URL)
			{
				theText = '<s:Label text="'+f.field_name+'" width="80"/>'+newLine();
				theText = '<s:TextInput id="'+f.field_name+'" width="200" text="{model.selected_'+object_name+'.'+f.field_name+'}"/>'+newLine();;
			} 
			//-------------------------
			
			if(f.field_type == Field.INT)
			{
				theText = '<s:Label text="'+f.field_name+'" width="80"/>'+newLine();
				theText = '<s:NumericStepper id="'+f.field_name+'" width="180" text="{model.selected_'+object_name+'.'+f.field_name+'}"/>'+newLine();;
			}
			//----------------
			if(f.field_type ==Field.TEXT)
			{
				theText = '<s:Label text="'+f.field_name+'" width="80"/>'+newLine();
				theText = '<s:TextArea id="'+f.field_name+'" width="180" text="{model.selected_'+object_name+'.'+f.field_name+'}"/>'+newLine();;
			}
			//----------------
			if(f.field_type == Field.VARCHAR)
			{
				
				if(f.field_size > 150)
				{
					theText = '<s:Label text="'+f.field_name+'" width="80"/>'+newLine();
					theText = '<s:TextArea id="'+f.field_name+'" width="180" text="{model.selected_'+object_name+'.'+f.field_name+'}"/>'+newLine();;
				}
				else
				{
					theText = '<s:Label text="'+f.field_name+'" width="80"/>'+newLine();
					theText = '<s:TextInput id="'+f.field_name+'" width="200" text="{model.selected_'+object_name+'.'+f.field_name+'}"/>'+newLine();;
				}
			}
			else
			{
				theText = '<s:Label text="'+f.field_name+'" width="80"/>'+newLine();
				theText = '<s:TextInput id="'+f.field_name+'" width="200" text="{model.selected_'+object_name+'.'+f.field_name+'}"/>'+newLine();;
			}
			
			//end
			if(vertical)
			{
				theText = '</s:VGroup>'
			}
			else
			{
				theText = '</s:HGroup>'
			}
			/*var container:Group;
			if(vertical){container = new VGroup};
			else{container = new HGroup};
			
			var label:Label = new Label;
			label.text = f.field_name;
			
			container.addElement(label);
		
			if(f.field_type == Field.AUDIO_URL 
				||f.field_type == Field.IMAGE_URL 
				||f.field_type == Field.URL
				||f.field_type == Field.VIDEO_URL)
			{
			var ti:TextInput = getTI(f.field_name, f.field_size)
			ti.width = 200;
			container.addElement(ti);
			return container;
			}
			
			if(f.field_type == Field.INT)
			{
				var ns:NumericStepper = new NumericStepper;
				ns.id = f.field_name;
				container.addElement(ns);
				return container;
			}
			if(f.field_type == Field.TEXT)
			{
				var ta:TextArea = getTA(f.field_name, 2000);
				ta.width = 250;
				container.addElement(ta);
				return container;
			}
			if(f.field_type == Field.VARCHAR)
			{
				
				if(f.field_size > 150)
				{
					var ta:TextArea = getTA(f.field_name, f.field_size);
					ta.width = 200;
					container.addElement(ta);
					return container;
				}
				else
				{
					var ti:TextInput = getTI(f.field_name, f.field_size)
					ti.width = 200;
					container.addElement(ti);
					return container;
				}
			}
			else
			{
				var ti:TextInput = getTI(f.field_name, 50)
				ti.width = 200;
				container.addElement(ti);
				return container;
			}
			
			
			
			
			
			function getTI(field_name:String, max_chars:Number):void
			{
				var ti:TextInput = new TextInput;
				ti.id = field_name;
				ti.maxChars = max_chars;
			}
			function getTA(field_name:String, max_chars:Number):void
			{
				var ta:TextArea = new TextArea;
				ta.id = field_name;
				ta.maxChars = max_chars;
			}*/
		}
	}
}