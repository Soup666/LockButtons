#include "svlRootListController.h"

@implementation svlRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void)sendText {
	NSDictionary *settings = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.soup.volumelock"];
	if([[settings objectForKey: @"enabled"] boolValue]) 
	{
		UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle:@"Test" message:@"YES" delegate:self cancelButtonTitle:@"Bye!" otherButtonTitles:nil];
		[alert1 show];
	}
	else
	{
		UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle:@"Test" message:@"NO" delegate:self cancelButtonTitle:@"Bye!" otherButtonTitles:nil];
		[alert1 show];
	}
	
}

@end
