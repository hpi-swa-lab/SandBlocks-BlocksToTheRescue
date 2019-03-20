*ToolIconsPlus
messageIconHelpFor: aSelector

	self class showMessageIcons ifFalse: [^ String empty].

	^ ToolIconHelp iconHelpNamed: (
			ToolIcons safeIconSymbolForMethod: (
				self class methodReferenceFor: aSelector in: self selectedClassOrMetaClass))