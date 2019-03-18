*BlocksToTheRescue-Core
btrStoreOn: aWriteStream

	| morphStream |
	morphStream := MultiByteBinaryOrTextStream on: ''.
	self allMorphsDo: [:each | each prepareToBeSaved].
	morphStream fileOutClass: nil andObject: self.
	aWriteStream nextPutAll: morphStream contents asByteArray ascii85Encoded.