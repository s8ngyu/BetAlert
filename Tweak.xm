%hook SBLockScreenManager
- (void) _finishUIUnlockFromSource:(int)source withOptions:(id)options {
    %orig;

	NSArray *ten = [NSArray arrayWithObjects:@"10.0", @"10.0.1", @"10.0.2", @"10.1", @"10.1.1", @"10.2", @"10.2.1", @"10.3", @"10.3.1", @"10.3.2", @"10.3.3", nil];
	NSArray *eleven = [NSArray arrayWithObjects:@"11.0", @"11.0.1", @"11.0.2", @"11.0.3", @"11.1", @"11.1.1", @"11.1.2", @"11.2", @"11.2.1", @"11.2.2", @"11.2.3", @"11.2.4", @"11.2.5", @"11.2.6", @"11.3", @"11.3.1", @"11.4", @"11.4.1", nil];
    NSArray *twelve = [NSArray arrayWithObjects:@"12.0", @"12.0.1", @"12.1", @"12.1.1", @"12.1.2", @"12.2", nil];

	NSString *tenAlertContent = @"A new iOS update is now available. Please update from the iOS 10 beta.";
	NSString *elevenAlertContent = @"A new iOS update is now available. Please update from the iOS 11 beta.";
	NSString *twelveAlertContent = @"A new iOS update is now available. Please update from the iOS 12 beta.";

	if ([ten containsObject:[[UIDevice currentDevice] systemVersion]]) {
		UIAlertView *betalert = [[UIAlertView alloc]initWithTitle:tenAlertContent message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"Close", nil];
    	[betalert show];
	} else if ([eleven containsObject:[[UIDevice currentDevice] systemVersion]]) {
		UIAlertView *betalert = [[UIAlertView alloc]initWithTitle:elevenAlertContent message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"Close", nil];
    	[betalert show];
	} else if ([twelve containsObject:[[UIDevice currentDevice] systemVersion]]) {
		UIAlertView *betalert = [[UIAlertView alloc]initWithTitle:twelveAlertContent message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"Close", nil];
    	[betalert show];
	}
}
%end

%hook SBHomeHardwareButton
-(void)singlePressUp:(id)arg1 {
	%orig;

	int value = arc4random_uniform(6);
	NSString *random = [NSString stringWithFormat:@"%ld", (long)value];

	NSArray *half = [NSArray arrayWithObjects:@"1", @"2", @"3", nil];

	if ([half containsObject:random] == YES) {
		NSArray *ten = [NSArray arrayWithObjects:@"10.0", @"10.0.1", @"10.0.2", @"10.1", @"10.1.1", @"10.2", @"10.2.1", @"10.3", @"10.3.1", @"10.3.2", @"10.3.3", nil];
		NSArray *eleven = [NSArray arrayWithObjects:@"11.0", @"11.0.1", @"11.0.2", @"11.0.3", @"11.1", @"11.1.1", @"11.1.2", @"11.2", @"11.2.1", @"11.2.2", @"11.2.3", @"11.2.4", @"11.2.5", @"11.2.6", @"11.3", @"11.3.1", @"11.4", @"11.4.1", nil];
    	NSArray *twelve = [NSArray arrayWithObjects:@"12.0", @"12.0.1", @"12.1", @"12.1.1", @"12.1.2", @"12.2", nil];

		NSString *tenAlertContent = @"A new iOS update is now available. Please update from the iOS 10 beta.";
		NSString *elevenAlertContent = @"A new iOS update is now available. Please update from the iOS 11 beta.";
		NSString *twelveAlertContent = @"A new iOS update is now available. Please update from the iOS 12 beta.";

		if ([ten containsObject:[[UIDevice currentDevice] systemVersion]]) {
			UIAlertView *betalert = [[UIAlertView alloc]initWithTitle:tenAlertContent message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"Close", nil];
    		[betalert show];
		} else if ([eleven containsObject:[[UIDevice currentDevice] systemVersion]]) {
			UIAlertView *betalert = [[UIAlertView alloc]initWithTitle:elevenAlertContent message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"Close", nil];
    		[betalert show];
		} else if ([twelve containsObject:[[UIDevice currentDevice] systemVersion]]) {
			UIAlertView *betalert = [[UIAlertView alloc]initWithTitle:twelveAlertContent message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"Close", nil];
    		[betalert show];
		}
	}
}
%end