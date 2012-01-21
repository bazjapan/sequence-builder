package db.view
{
	[Bindable]
	public class DataView
	{
		public function DataView(obj:Object = null)
		{
			if(obj != null)
			{
				view_name = obj["view_name"];
				view_fields = obj["view_fields"];
			}
		}
		
		public var view_name:String
		public var view_fields:String;
	}
}