﻿package com.antpaw
{
    import flash.external.ExternalInterface;
	import flash.system.Capabilities;
	
	public class debug
	{
		public static function log(variable:*):void
		{
			if (Capabilities.playerType === 'External')
			{
				trace(variable);
			}
			else
			{
				if (variable is String)
				{
					variable = '"' + variable + '"';
				}
				
				ExternalInterface.call('window.console && console.log && console.log(' + variable + ')');
			}
		}
	}
}