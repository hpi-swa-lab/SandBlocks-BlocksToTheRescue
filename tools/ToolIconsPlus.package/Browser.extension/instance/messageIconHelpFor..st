*ToolIconsPlus
messageIconHelpFor: aSelector

	self class showMessageIcons ifFalse: [^ String empty].
	^ ToolIconHelp iconHelpNamed: (ToolIcons
		iconSymbolForClass: self selectedClassOrMetaClass
		selector: aSelector)