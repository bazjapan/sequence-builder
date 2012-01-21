package com.pbsmediatech.sequenceBuilder
{
	import jp.unchained.partner.PartnerSiteConstants;

	public function getServiceBaseURL(debug:Boolean = true):String
		{
		debug = PartnerSiteConstants.debbuging
		if(debug)
		{
			return PartnerSiteConstants.SERVICE_BASE_URL_DEBUG;
		}
		else
		{
			return PartnerSiteConstants.SERVICE_BASE_URL;
		}
		}
	
}