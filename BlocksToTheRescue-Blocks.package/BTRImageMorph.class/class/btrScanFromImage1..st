as yet unclassified
btrScanFromImage1: aReadStream

	| imageBinary image |
	imageBinary := aReadStream upToEnd ascii85Decoded asByteArray.
	image := PNGReadWriter formFromStream: (ReadStream on: imageBinary).
	
	^ self new
		image: image;
		yourself.