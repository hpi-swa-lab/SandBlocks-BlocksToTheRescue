*ToolIconsPlus
messageIconHelpFor: aSelector

	self class showMessageIcons ifFalse: [^ String empty].

	^ ToolIconHelp iconHelpNamed: (
			ToolIcons safeIconSymbolForMethod: (
				MethodReference
					class: self selectedClassOrMetaClass
					selector: aSelector withBlanksTrimmed asSymbol))