*ToolIconsPlus
iconForClass: aBehavior selector: aSelector
	"Answer an icon to be shown for the selector aSymbol in aBehavior."

	^ self iconForMethod: (
		MethodReference
			class: aBehavior
			selector: aSelector withBlanksTrimmed asSymbol)