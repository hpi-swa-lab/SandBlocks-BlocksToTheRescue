*BlocksToTheRescue-Core
privateRemove: aMorph

	submorphs := submorphs reject: [:each | each == aMorph].
	self layoutChanged.