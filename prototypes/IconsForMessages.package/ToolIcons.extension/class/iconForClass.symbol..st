*IconsForMessages
iconForClass: aClass symbol: aSymbol
	"Answer an icon (!) to be shown for the given method defined by class and symbol."

	(aClass respondsTo: #toolIconSelector:) ifTrue: [
		(aClass toolIconSelector: aSymbol) ifNotNil: [:icon | ^ icon]].

	aClass methodDictionary at: aSymbol ifPresent: [ :method |
		method isMorphMessage ifTrue: [^ #morph].
		method hasBreakpoint ifTrue: [^ #breakpoint].
		method literalsDo: [:literal |
			(#(halt halt: haltIfNil haltIf: haltOnce haltOnce: haltOnCount: halt:onCount: break) includes: literal)
				ifTrue: [^ #breakpoint].
			(#(flag: needsWork notYetImplemented) includes: literal)
				ifTrue: [^ #flag].
			(#(shouldBeImplemented subclassResponsibility) includes: literal)
				ifTrue: [
					(aClass isSelectorOverridden: aSymbol)
						ifTrue: [^ #abstract]
						ifFalse: [^ #notOverridden]].
			(#(shouldNotImplement) includes: literal)
				ifTrue: [^ #no]].
		method hasReportableSlip ifTrue: [^ #breakpoint]].
		
	(aClass isSelectorOverride: aSymbol)
		ifTrue: [
			(aClass isSelectorOverridden: aSymbol)
				ifTrue: [ ^ #arrowUpAndDown ]
				ifFalse: [ ^ #arrowUp ] ]
		ifFalse: [
			(aClass isSelectorOverridden: aSymbol)
				ifTrue: [^ #arrowDown ]].

	aClass methodDictionary at: aSymbol ifPresent: [ :method |
		(method primitive ~= 0 and: [method isQuick not])
			ifTrue: [^ #primitive]].
		
	^ #blank