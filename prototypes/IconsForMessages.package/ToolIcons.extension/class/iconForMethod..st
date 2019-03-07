*IconsForMessages
iconForMethod: aMethodReference
	"Answer an icon (!) to be shown for the given method reference."
	"You can change the icon of a message using the following hooks:
	 - in the method definition via pragma
	     <messageIconSymbol: #flag> or
	     <messageIcon: #brokenMorphIcon at: #ToolIcons>
	 - in the containing class on class side via implementing
	     toolIconSelector: aSymbol for instance side methods or
	     metaToolIconSelector: aSymbol for class side methods
	 - in the method object (the one in the methodDict) via implementing methodIcon"
	
	^ [self icon: (self iconSymbolForMethod: aMethodReference)]
		on: Exception
		do: [:ex | (ex isKindOf: Halt) ifTrue: [ex pass].
			self brokenMorphIcon]