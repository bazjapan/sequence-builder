package com.pbsmediatech.code.sequenceBuilder.uiBuilder
{
	import db.field.Field;
	
	import mx.collections.ArrayCollection;
	
	import utils.text.doubleQuote;
	import utils.text.newLine;

	public function makeFlexAddScreen(fields:ArrayCollection)
	{
		var theUI:String = '';
		
		theUI += "<?xml version="+doubleQuote()+"1.0"+doubleQuote()+" encoding="+doubleQuote()+"utf-8"+doubleQuote()+"?>"+newLine();
		theUI += "<s:Group xmlns:fx="+doubleQuote()+"http://ns.adobe.com/mxml/2009"+doubleQuote()+" xmlns:s="+doubleQuote()+"library://ns.adobe.com/flex/spark"+doubleQuote()+" xmlns:mx="+doubleQuote()+"library://ns.adobe.com/flex/mx"+doubleQuote()+" width="+doubleQuote()+"100%"+doubleQuote()+" height="+doubleQuote()+"100%"+doubleQuote()+">"+newLine();
		theUI += "<s:layout>"+newLine();
		theUI += "<s:VerticalLayout/>"+newLine();
		theUI += "</s:layout>"+newLine();
		theUI += newLine();
		theUI += "<fx:Script>"+newLine();
		theUI += "<![CDATA["+newLine();
		theUI += "]]>"+newLine();
		theUI += "</fx:Script>"+newLine();
		
		for each (var f:Field in fields)
		{
			theUI+= "<s:Label text="+doubleQuote()+f.field_name+doubleQuote()+"/>"
			if(f.field_type == Field.AUDIO_URL ||
				f.field_type == Field.IMAGE_URL ||
				f.field_type == Field.URL ||
				f.field_type == Field.VIDEO_URL ||
				f.field_type == Field.VARCHAR)
			{
				theUI += "<s:TextInput  id="+doubleQuote()+f.field_name+doubleQuote()+" maxChars="+doubleQuote()+f.field_size+doubleQuote()+" width="+doubleQuote()+"100%"+doubleQuote()+" height="+doubleQuote()+"100%"+doubleQuote()+"/>"+newLine();
			}
			if(f.field_type == Field.LIST ||
				f.field_type == Field.JSONOBJ ||
				f.field_type == Field.TEXT )
			{
				theUI += "<s:TextArea id="+doubleQuote()+f.field_name+doubleQuote()+"  maxChars="+doubleQuote()+f.field_size+doubleQuote()+" width="+doubleQuote()+"100%"+doubleQuote()+" height="+doubleQuote()+"100%"+doubleQuote()+"/>"+newLine();
			}
			if(f.field_type == Field.BIGINT ||
				f.field_type == Field.INT ||
				f.field_type == Field.DECIMAL)
			{
				theUI += "<s:NumericStepper id="+doubleQuote()+f.field_name+doubleQuote()+" width="+doubleQuote()+"100%"+doubleQuote()+" height="+doubleQuote()+"100%"+doubleQuote()+"/>"+newLine();
			}
				
		}
		
		
		
		theUI += "</s:Group>"+newLine();
		
		
		
		
		
	}
	
}