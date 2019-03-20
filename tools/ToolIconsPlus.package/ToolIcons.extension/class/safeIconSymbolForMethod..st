*ToolIconsPlus
safeIconSymbolForMethod: aMethodReference
	"Answer an icon symbol to be shown for the given method reference."
	
	^ [self iconSymbolForMethod: aMethodReference]
		on: Exception
		do: [:ex | (ex isKindOf: Halt) ifTrue: [ex pass].
			#brokenMorph]