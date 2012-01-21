package com.pbsmediatech.sequenceBuilder.views.components
{
	import flash.events.MouseEvent;
	
	import mx.controls.Button;
	import mx.events.CloseEvent;
	
	import spark.components.HGroup;
	import spark.components.TextArea;
	import spark.components.TitleWindow;
	import spark.layouts.VerticalLayout;
	
	public class NoteTaker extends TitleWindow
	{
		public function NoteTaker()
		{
			super();
			layout = new VerticalLayout;
			ta = new TextArea;
			this.addElement(ta);
			controlBar = new HGroup;
			controlBar.setStyle("horizontalAlign", "right");
			this.addElement(controlBar);
			ok_butt = new Button();
			controlBar.addElement(ok_butt);
			ok_butt.label = "OK";
			ok_butt.addEventListener(MouseEvent.CLICK, function(evt:MouseEvent):void
			{
				dispatchEvent(new CloseEvent(CloseEvent.CLOSE));
			})
		}
		private var ta:TextArea
		private var controlBar:HGroup;
		private var ok_butt:Button;
		
		public function get text():String
		{
			if(!ta)return "";
			return ta.text;
		}

		public function set text(value:String):void
		{
			if(!ta)return;
			ta.text = value;
		}

		
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			if(!ta)return;
			ta.width = this.width;
			ta.height = this.height;
			controlBar.width = this.width;
		}
	}
}