logic
nextBlock

	| portInOtherBlock |
	portInOtherBlock := self portToNext connectedPort.
	^ portInOtherBlock ifNotNil: [portInOtherBlock block]