package com.pbsmediatech.sequenceBuilder.views.tasks.sequences
{
	import com.adobe.serialization.json.JSON;
	import com.pbsmediatech.dto.ControllerSequence;

	public function generateSequenceConfig(seq:ControllerSequence):Object
	{
		var allMighty:Object = {}
		allMighty.sequence_controller_name = seq.sequence_controller_name;
		allMighty.sequence_info = seq.sequence_info;
		allMighty.sequence_domain = seq.sequence_domain;
		allMighty.sequence_ID = seq.sequence_ID;
		var fields:Array = seq.sequence_fields;
		allMighty.fields = [];
		for(var j:int = 0; j< fields.length; j++){
			allMighty.fields.push(fields[j]);
		}
		allMighty.sequence_version = seq.sequence_version;
		allMighty.sequence_last_modified = seq.sequence_last_modified;
		allMighty.sequence_notes = seq.sequence_notes;
		//allMighty.sequence_custom_methods = JSON.decode(seq.sequence_custom_methods);
		allMighty.sequence_last_modified = seq.sequence_last_modified;
		allMighty.sequence_date_added = seq.sequence_date_added;
		allMighty.sequence_table_name = seq.sequence_table_name;
		allMighty.sequence_table_version = seq.sequence_table_version;
		//allMighty.generated_method_info = JSON.decode(seq.generated_method_info);
		allMighty.sequence_views = seq.sequence_views;
		allMighty.sequence_uses_store = seq.sequence_uses_store;
		if(seq.sequence_store_info != null &&  seq.sequence_store_info != ""){
			allMighty.sequence_store_info = seq.sequence_store_info;
		}else{
			allMighty.sequence_store_info = {};	
			
		}
		return allMighty;
		
	}
	
}