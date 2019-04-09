*BlocksToTheRescue-Core
btrScanFromForm1: aReadStream

	| imageBinary image reader |
	imageBinary := aReadStream upToEnd ascii85Decoded asByteArray.
	(PNGReadWriter understandsImageFormat: (ReadStream on: imageBinary))
		ifFalse: [^ self error: 'corrupt PNG stream'].
	reader := PNGReadWriter on: (ReadStream on: imageBinary).
	image :=  reader nextImage.
	reader close.
	
	^ image