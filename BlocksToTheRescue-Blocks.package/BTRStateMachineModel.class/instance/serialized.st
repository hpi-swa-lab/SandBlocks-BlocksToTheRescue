fileIn/out
serialized

	^ (WriteStream on: '')
		in: [:stream | self serializeOn: stream];
		contents