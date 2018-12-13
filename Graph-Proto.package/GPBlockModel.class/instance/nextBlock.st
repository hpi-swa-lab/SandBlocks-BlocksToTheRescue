logic
nextBlock

	| startPortInNextBlock |
	startPortInNextBlock := self portToNext connectedPort.
	
	^ startPortInNextBlock ifNotNil: [startPortInNextBlock block]