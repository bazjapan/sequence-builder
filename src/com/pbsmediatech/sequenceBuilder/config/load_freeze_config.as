package com.pbsmediatech.sequenceBuilder.config
{
	import com.adobe.serialization.json.JSON;
	
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public function load_freeze_config(ready:Function):void
		{
		var url:String = "http://www.unchained.jp/partner/apps/ucxb/node_modules/freeze/lib/FreezeConfig.json";
		
		var request:URLRequest = new URLRequest(url);
		var loader:URLLoader = new URLLoader();
		loader.load(request);
		var config:Object;
		loader.addEventListener(Event.COMPLETE, function(e:Event):void
		{
			config = JSON.decode(String(loader.data));
			trace(config)
			if(ready != null){ready(config)}
		})
		}
	
}