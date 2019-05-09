accessing
methodNodeClass

	^ (requestor properties at: BTRBlocketMethod pragma ifAbsent: [nil])
		ifNil: [super methodNodeClass]
		ifNotNil: [BTRBlocketMethodNode]