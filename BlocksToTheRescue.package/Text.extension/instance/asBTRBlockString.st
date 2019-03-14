*BlocksToTheRescue
asBTRBlockString

	| writeStream readStream |
	writeStream := WriteStream on: ''.
	readStream := ReadStream on: string.
	[readStream atEnd]
		whileFalse: [
			writeStream nextPutAll: (readStream upTo: Character startOfHeading).
			(readStream atEnd)
				ifFalse: [
					writeStream nextPut: Character startOfHeading.
					self attributesAt: readStream position do: [:attribute | attribute writeScanOn: writeStream].
					writeStream nextPut: Character startOfText]].
	^ writeStream contents