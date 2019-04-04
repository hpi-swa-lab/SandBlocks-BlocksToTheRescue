loading
loadAnimatedImageMorphNamed: aFileName
	^AnimatedImageMorph new fromStream: (self fileStreamNamed: aFileName)