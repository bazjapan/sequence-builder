package com.pbsmediatech.sequenceBuilder.views.components.common
{
	public class KeyValuePair
	{
		public function KeyValuePair(obj:Object = null)
		{
			if(obj != null){
				
				key = obj["key"];
				value = obj["value"];
				
			}
			
			
		}
		
		public var key:String;
		public var value:String;
		
		
	}
}