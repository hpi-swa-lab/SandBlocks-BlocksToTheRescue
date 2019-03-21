*ToolIconsPlus
asIcon

	^ self extent = (12@12)
		ifTrue: [self]
		ifFalse: [self scaledToSize: 12]