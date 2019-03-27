accessing
adornmentMorph

	self viewPort submorphs size ~= 2 ifTrue: [self changed: #contentMorphs].
	^ self viewPort submorphs first