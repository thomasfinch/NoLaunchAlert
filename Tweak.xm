%hook SBApplication
-(BOOL)showLaunchAlertForType:(int)type { return NO; }
%end