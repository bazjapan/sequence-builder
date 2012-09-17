package com.pbsmediatech.sequenceBuilder.views.tasks.window
{
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
	
	public function show_text_window(title:String, parent:DisplayObject, next:Function):void
	{
		var pop:TitleWindow = new TitleWindow();
		
		var vg:VGroup = new VGroup();
		pop.addElement(vg)
		var ta:TextArea = new TextArea;
		ta.width = 500;
		ta.height = 500;
		vg.addElement(ta);
		var hg:HGroup = new HGroup();
		var butt:Button = new Button();
		butt.label = "OK";
		butt.addEventListener(MouseEvent.CLICK, function(evt:Event):void{
			PopUpManager.removePopUp(pop);
			pop = null;
			next(ta.text);
		});
		hg.height = 40;
		hg.addElement(butt);
		vg.addElement(ta);
		vg.addElement(hg);
		
	
		
		
		pop.addEventListener(CloseEvent.CLOSE, function(ce:CloseEvent):void
		{
			PopUpManager.removePopUp(pop);
			pop = null;
		});
		pop.title = title;
		PopUpManager.addPopUp(pop, parent,false);
		
	}
	
}