fileIn/Out
scanFrom: aStream version: aString

	| versionSelector |
	versionSelector := ('scanFrom', aString, ':') asSymbol.
	^ (self respondsTo: versionSelector)
		ifTrue: [self perform: versionSelector with: aStream]
		ifFalse: [self scanError: 'Unsupported version "', aString, '"!']