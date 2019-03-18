*BlocksToTheRescue-Core
btrStoreOn: aWriteStream

	| morphStream previousOwner previousEventHandler |
	previousOwner := self owner.
	previousEventHandler := self eventHandler.
	
	self allMorphsDo: [:each | each prepareToBeSaved].
	self privateOwner: nil.
	self eventHandler: nil.
	
	morphStream := MultiByteBinaryOrTextStream on: ''.
	morphStream fileOutClass: nil andObject: self.
	aWriteStream nextPutAll: morphStream contents asByteArray ascii85Encoded.
	
	previousOwner ifNotNil: [self privateOwner: previousOwner].
	self eventHandler: previousEventHandler.