package db.view
{
	[Bindable]
	public class ViewField
	{
		public function ViewField(obj:Object = null)
		{
			if(obj != null)
			{
				tunnel = obj["tunnel"];
				field_name = obj["field_name"];
				table_name = obj["table_name"];
				can_be_null = obj["can_be_null"];
				is_FK = obj["is_FK"];
				tunnel_field = obj["tunnel_field"];
				fk_target = obj["fk_target"];
				field_alias = obj["field_alias"];
			}
			
		}
		
		public var tunnel:Boolean;
		public var field_name:String;
		public var table_name:String;
		public var can_be_null:Boolean;
		public var is_FK:Boolean;
		public var tunnel_field:String;
		public var fk_target:String;
		public var field_alias:String;
		
	}
}