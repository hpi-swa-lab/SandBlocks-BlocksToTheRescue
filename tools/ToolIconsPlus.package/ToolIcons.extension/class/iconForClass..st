*ToolIconsPlus
iconForClass: aClass
	"Answer an icon (!) to be shown for the given class."
	
	^ aClass
		ifNil: [self emptyIcon]
		ifNotNil: [(aClass respondsTo: #toolIcon)
			ifTrue: [self icon: aClass toolIcon]
			ifFalse: [self emptyIcon]]