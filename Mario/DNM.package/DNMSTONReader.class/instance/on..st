initialization
on: aReadStream
	super on: aReadStream.
	aReadStream converter: (Latin1TextConverter new).
	