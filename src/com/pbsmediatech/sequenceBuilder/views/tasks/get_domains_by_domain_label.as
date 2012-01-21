package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import com.pbsmediatech.sequenceBuilder.AppModel;

	public function get_domains_by_domain_label(domain_label:String):Array
	{
			var found:Array = [];
			for each (var obj:Object in AppModel.getInstance().domains)
			{
				if(obj['domain_label'] == domain_label)
				{
					found.push(obj);
				}
			}
			return found;
	}
	
}