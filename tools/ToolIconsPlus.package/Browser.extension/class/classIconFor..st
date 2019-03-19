*ToolIconsPlus
classIconFor: aSelector

	self showClassIcons ifFalse: [^ nil].
	^ ToolIcons iconForClass: (self classFor: aSelector)