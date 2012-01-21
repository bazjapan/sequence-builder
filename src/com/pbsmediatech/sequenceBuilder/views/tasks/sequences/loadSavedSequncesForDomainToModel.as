package com.pbsmediatech.sequenceBuilder.views.tasks.sequences
{
	import com.pbsmediatech.json.controllers.ControllerSequenceController;
	import com.pbsmediatech.json.utils.ControllerSequenceResultHelper;
	
	import com.pbsmediatech.sequenceBuilder.AppModel;
	
	import mx.rpc.events.ResultEvent;

	public function loadSavedSequncesForDomainToModel(domain_label:String):void
		{
			var con:ControllerSequenceController = new ControllerSequenceController(AppModel.getInstance().service_base_url)
			var params:Object = {sequence_domain:domain_label}
			con.get_controller_sequences_by_sequence_domain(params, function(evt:ResultEvent):void
			{
				AppModel.getInstance().saved_sequences.source = new ControllerSequenceResultHelper().resultToArray(String(evt.result));
				
			});
		}
	
}