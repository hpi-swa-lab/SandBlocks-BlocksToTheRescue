*BlocksToTheRescue-Core
asBTRBlockString

	^ String streamContents: [:writeStream | | readStream |
		readStream := string readStream.
		[readStream atEnd]
			whileFalse: [
				writeStream nextPutAll: (readStream upTo: Character startOfHeading).
				(readStream last = Character startOfHeading)
					ifTrue: [
						writeStream nextPut: Character startOfHeading.
						self attributesAt: readStream position do: [:textAttribute | 
							textAttribute shoutShouldPreserve ifTrue: [textAttribute writeScanOn: writeStream]].
						writeStream nextPut: Character startOfText]]].