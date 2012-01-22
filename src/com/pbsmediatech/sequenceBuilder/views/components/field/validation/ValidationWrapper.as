package com.pbsmediatech.sequenceBuilder.views.components.field.validation
{
	import db.field.validators.IFieldValidator;

	public class ValidationWrapper
	{
		public function ValidationWrapper(validator:IFieldValidator)
		{
			this.validator = validator;
		}
		
		public var validator:IFieldValidator;
		
		[Bindable]
		public var show:Boolean;
		[Bindable]
		public var initialValue:*;
		
		
		
		
	
		
	}
}