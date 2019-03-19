*ToolIconsPlus
messageIconFor: aSelector in: aClass

	self showMessageIcons ifFalse: [^ nil].

	^ ToolIcons iconForMethod: (self
			methodReferenceFor: aSelector
			in: aClass)