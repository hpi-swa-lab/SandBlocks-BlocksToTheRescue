accessing
morphForTransition: anAssociation ifPresent: aBlockClosure

	^ ([self transitionMorphsDict at: (self transitionAssociationFrom: anAssociation value on: anAssociation key)]
		on: Exception do: [^ self])
		in: aBlockClosure