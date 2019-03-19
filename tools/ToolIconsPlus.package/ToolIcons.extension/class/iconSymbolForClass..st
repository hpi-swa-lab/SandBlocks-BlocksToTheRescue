*ToolIconsPlus
iconSymbolForClass: aClassNameSymbol
	"Answer an icon symbol to be shown for the given class name."
	
	self environment
		at: aClassNameSymbol
		ifPresent: [:global |
			(global respondsTo: #toolIcon) ifTrue: [
				^ global toolIcon]]
		ifAbsent: [^ #blank].
	^ #blank