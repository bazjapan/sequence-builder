package com.pbsmediatech.sequenceBuilder.views.components
{
	import mx.controls.Image;
	
	public class FadedImage extends Image
	{
		public function FadedImage()
		{
			super();
		}
		
		
		override public function set enabled(value:Boolean):void
		{
			super.enabled = value;
			if(value)
			{
				this.alpha = 1;
				this.buttonMode= true;
				this.useHandCursor= true;
			}
			else
			{
				this.alpha = 0.4;
				this.buttonMode= false;
				this.useHandCursor= false;
			}
		}
	}
}