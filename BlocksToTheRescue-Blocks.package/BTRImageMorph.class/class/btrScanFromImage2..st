as yet unclassified
btrScanFromImage2: aReadStream

	| width height imageBinary image |
	width := Integer readFrom: (aReadStream upTo: $@).
	height := Integer readFrom: (aReadStream upTo: $;).
	imageBinary := aReadStream upToEnd ascii85Decoded asByteArray.
	image := PNGReadWriter formFromStream: (ReadStream on: imageBinary).
	
	^ self new
		extent: width@height;
		image: image;
		yourself.