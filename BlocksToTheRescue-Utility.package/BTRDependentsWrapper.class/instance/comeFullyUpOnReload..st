accessing
comeFullyUpOnReload: aReferenceStream

	^ self theObject
		myDependents: self storedDependents;
		yourself