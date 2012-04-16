package com.pbsmediatech.sequenceBuilder.views.tasks.field
{
	import db.field.Field;
	
	import utils.array.removeItem;

	public function setDataView(f:Field, dfName:String, remove:Boolean):void
	{
		if(remove){
			removeItem(f.dataviews, dfName);
			
		}else{
			
			f.dataviews.push(dfName);
		}	
	}
	
}