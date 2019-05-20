accessing
value

	^ super value ifNil: [self color: Color transparent]