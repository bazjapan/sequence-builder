package com.pbsmediatech.code.sequenceBuilder.uiBuilder
{
	import db.field.Field;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Label;
	
	import spark.components.Button;
	import spark.components.Group;
	import spark.components.HGroup;
	import spark.components.NumericStepper;
	import spark.components.TextArea;
	import spark.components.TextInput;
	import spark.layouts.VerticalLayout;

	public function makeAddEntityForm(fields:ArrayCollection, submit_function:Function):Group
	{
		var g:Group = new Group;
		g.layout = new VerticalLayout;
		var addedElements:Array = [];
		
		for each (var f:Field in fields)
		{
			var l:Label = new Label;
			l.text = f.field_name;
			g.addElement(l);
				
			if(f.field_type == Field.AUDIO_URL ||
				f.field_type == Field.IMAGE_URL ||
				f.field_type == Field.URL ||
				f.field_type == Field.VIDEO_URL ||
				f.field_type == Field.VARCHAR)
			{
				var ti:TextInput = new TextInput;
				ti.id = f.field_name;
				ti.maxChars = f.field_size;
				g.addElement(ti);
				addedElements.push(ti);
			}
			if(f.field_type == Field.LIST ||
				f.field_type == Field.JSONOBJ ||
				f.field_type == Field.TEXT )
			{
				
				var ta:TextArea = new TextArea;
				ta.id = f.field_name;
				ta.maxChars = f.field_size;
				g.addElement(ta);
				addedElements.push(ta);
				
			}
			if(f.field_type == Field.BIGINT ||
				f.field_type == Field.INT ||
				f.field_type == Field.DECIMAL)
			{
				var ns:NumericStepper = new NumericStepper;
				ns.id = f.field_name;
				ns.value = 0;
				g.addElement(ns);
				addedElements.push(ns);
			}
		}
			var cb:HGroup = new HGroup;
			g.addElement(cb);
			var submit_button:Button = new Button;
			submit_button.label = "Submit";
			cb.addElement(submit_button);
			submit_button.addEventListener(MouseEvent.CLICK, function(e:Event):void
			{
				var vo:Object = new Object;
				for each (var obj:Object in addedElements)
				{
					if(obj is TextInput)
					{
						vo[obj["id"]] = obj["text"];
					}
					if(obj is TextArea)
					{
						vo[obj["id"]] = obj["text"];
					}
					if(obj is NumericStepper)
					{
						vo[obj["id"]] = obj["value"];
					}
				}
				submit_function(vo);
			});
			
			
			return g;
			
	}
	
	
}