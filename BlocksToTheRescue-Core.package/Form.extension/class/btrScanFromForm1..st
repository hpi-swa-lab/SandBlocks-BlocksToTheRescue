*BlocksToTheRescue-Core
btrScanFromForm1: aReadStream

	| imageBinary image |
	imageBinary := aReadStream upToEnd ascii85Decoded asByteArray.
	image := PNGReadWriter formFromStream: (ReadStream on: imageBinary).
	
	^ image