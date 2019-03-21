*ToolIconsPlus
valueIcon

	^ (self value respondsTo: #asIcon)
		ifTrue: [self value asIcon]
		ifFalse: [nil]