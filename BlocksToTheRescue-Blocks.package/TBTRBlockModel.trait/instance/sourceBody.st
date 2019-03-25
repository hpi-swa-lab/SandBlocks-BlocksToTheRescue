accessing
sourceBody
	
	| stream |
	stream := WriteStream on: ''.
	self btrWriteScanOn: stream.
	
	^ stream contents