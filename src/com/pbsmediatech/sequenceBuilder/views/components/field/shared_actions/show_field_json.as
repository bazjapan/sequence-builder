package com.pbsmediatech.sequenceBuilder.views.components.field.shared_actions
{
	import com.maccherone.json.JSON;
	
	import db.field.Field;
	
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.system.System;
	
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	
	import spark.components.Button;
	import spark.components.HGroup;
	import spark.components.TextArea;
	import spark.components.TitleWindow;
	import spark.components.VGroup;

	public function show_field_json(f:Field, parent:DisplayObject)
	{
		if(!f){return};
		var output:String = "";
		
		output = JSON.encode(f,true);
		var pop:TitleWindow = new TitleWindow();
		
		var vg:VGroup = new VGroup();
		pop.addElement(vg)
		var ta:TextArea = new TextArea;
		ta.width = 500;
		ta.height = 500;
		vg.addElement(ta);
		var hg:HGroup = new HGroup();
		var butt:Button = new Button();
		butt.label = "Copy";
		butt.addEventListener(MouseEvent.CLICK, function(evt:Event):void{
			System.setClipboard(ta.text);
		});
		hg.height = 40;
		hg.addElement(butt);
		vg.addElement(ta);
		vg.addElement(hg);
		
		
		ta.text = output;
		
		
		pop.addEventListener(CloseEvent.CLOSE, function(ce:CloseEvent):void
		{
			PopUpManager.removePopUp(pop);
			pop = null;
		});
		pop.title = "Config JSON for "+f["field_name"];
		PopUpManager.addPopUp(pop, parent,false);
	}
	
}