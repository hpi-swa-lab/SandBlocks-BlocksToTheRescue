*ToolIconsPlus
messageIconFor: aSelector in: aBehavior

	self showMessageIcons ifFalse: [^ nil].

	^ ToolIcons iconForClass: aBehavior selector: aSelector