
#define ONOFF @"enabled"
#define LOCK @"lockbtn"

%hook SpringBoard
 - (BOOL)_handlePhysicalButtonEvent:(UIPressesEvent *)event
 {
	NSDictionary *settings = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.soup.volumelock"];
	bool enabled = [[settings objectForKey: ONOFF] boolValue];
	bool lockenabled = [[settings objectForKey: LOCK] boolValue];

	if(enabled)
	{
		for(UIPress *press in event.allPresses.allObjects)
		{
			if(press.force == 1)
			{
				if(press.type == 104 && !lockenabled) 
				{
					return %orig;
				}
				return NO;
			}
	 	}
	}
	 return %orig;
 }
 %end
