*BlocksToTheRescue
asBTRBlockString

	| writeStream readStream |
	writeStream := WriteStream on: ''.
	readStream := ReadStream on: string.
	[readStream atEnd]
		whileFalse: [
			writeStream nextPutAll: (readStream upTo: (Character value: 1)).
			(readStream last = (Character value: 1)) "check if we actually read SOH or if we reached the end of the stream"
				ifTrue: [
					writeStream nextPut: (Character value: 1).
					self attributesAt: readStream position do: [:attribute | attribute writeScanOn: writeStream].
					writeStream nextPut: (Character value: 2)]].
	^ writeStream contents