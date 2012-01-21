package jp.unchained
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class UserDiaryModel
	{
		public function UserDiaryModel()
		{
		}
		
		public var user_ID:Number;
		public var user_first_name:String;//labelFunction from sp_user_profiles_table
		public var event_ID:Number;
		
		public var event_user_diary_ID:Number;
		public var event_user_diary_entries:ArrayCollection = new ArrayCollection();
		
		
		
		
		
		
		
		
	}
}