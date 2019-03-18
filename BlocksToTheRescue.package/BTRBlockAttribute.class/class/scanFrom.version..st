fileIn/Out
scanFrom: aStream version: aString

	| versionSelector |
	versionSelector := ('scanFrom', aString, ':') asSymbol.
	^ (aString isEmpty not and: [self respondsTo: versionSelector])
		ifTrue: [self perform: versionSelector with: aStream]
		ifFalse: [self scanError: 'Unsupported version "', aString, '"!']