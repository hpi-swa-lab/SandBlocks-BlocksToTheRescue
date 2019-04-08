comparing
hash

	^ self hasImage
		ifTrue: [self image extent hash
			bitXor: self image tallyPixelValues hash]
		ifFalse: [super hash]