accessing
morph

	self viewPort submorphs size ~= 2 ifTrue: [self changed: #contentMorphs].
	^ self viewPort submorphs second