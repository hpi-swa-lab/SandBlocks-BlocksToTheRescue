*ToolIconsPlus
metaColorIconFor: aSymbol

	| method |
	method := self theMetaClass methodDict at: aSymbol ifAbsent: [^ nil].

	^ (self isProbablyColorReturningMethod: method)
		ifTrue: [(self perform: aSymbol) asIcon]