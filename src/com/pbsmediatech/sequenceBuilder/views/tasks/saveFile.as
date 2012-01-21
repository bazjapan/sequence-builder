package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import flash.net.FileReference;

	public function saveFile(text:String, fileName:String):void
		{
			if(text == null){text = "No text"};
			if(fileName == null){fileName = "filename"}
			var fr:FileReference= new FileReference();
			fr.save(text, fileName);
		}
	
}