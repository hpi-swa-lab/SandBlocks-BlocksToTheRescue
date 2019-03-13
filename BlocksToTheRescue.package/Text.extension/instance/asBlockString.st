*BlocksToTheRescue
asBlockString

	| writeStream readStream |
	writeStream := WriteStream on: ''.
	readStream := ReadStream on: string.
	[readStream atEnd]
		whileFalse: [
			writeStream nextPutAll: (readStream upTo: (Character value: 1)).
			(readStream last = (Character value: 1))
				ifTrue: [
					self attributesAt: readStream position do: [:attribute | 
						(attribute isKindOf: BTRBlockAttribute)
							ifTrue: [attribute writeScanOn: writeStream]].
					writeStream nextPut: (Character value: 2)]].
	^ writeStream contents