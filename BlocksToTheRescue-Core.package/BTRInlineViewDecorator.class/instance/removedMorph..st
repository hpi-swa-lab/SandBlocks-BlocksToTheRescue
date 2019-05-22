submorphs-add/remove
removedMorph: aMorph

	self submorphs 
		ifEmpty: [self abandon].