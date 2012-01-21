package com.pbsmediatech.sequenceBuilder.views.tasks
{
	import db.MySQLRow;
	
	import com.pbsmediatech.sequenceBuilder.AppModel;

	public function findMySQLRowByName(row_name:String):MySQLRow
		{
		for each (var row:MySQLRow in AppModel.getInstance().datastore.fields)
		{
			if(row.Field == row_name)
			{
				return row;
			}
		}
		return null;
		}
	
}