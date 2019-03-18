*BlocksToTheRescue-Core
readAttributesFrom: aReadStreamOrString

	| attributes readStream |
	readStream := aReadStreamOrString readStream.
	attributes := OrderedCollection new.
	[readStream atEnd]
		whileFalse: [attributes addLast: (TextAttribute newFrom: readStream)].
	^ attributes