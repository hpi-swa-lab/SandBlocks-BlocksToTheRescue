*BlocksToTheRescue
parseBTRBlockString: aString

	| readStream resultStream runs |
	readStream := ReadStream on: aString.
	resultStream := WriteStream on: ''.
	runs := RunArray new.
	[readStream atEnd]
		whileFalse: [ self
				parseBTRBlockStringSequenceFrom: readStream
				into: resultStream 
				withAttributes: runs].
	^ self string: resultStream contents runs: runs