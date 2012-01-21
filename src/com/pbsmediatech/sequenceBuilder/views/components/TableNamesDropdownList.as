package com.pbsmediatech.sequenceBuilder.views.components
{
	import jp.unchained.views.tasks.get_domain_name_tables_names;
	
	import spark.components.DropDownList;

	public class TableNamesDropdownList extends DropDownList
	{
		public function TableNamesDropdownList()
		{
			this.dataProvider = get_domain_name_tables_names();
		}
	}
}