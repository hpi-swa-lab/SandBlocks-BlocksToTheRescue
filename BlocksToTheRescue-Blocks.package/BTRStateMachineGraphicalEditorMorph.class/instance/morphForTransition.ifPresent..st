accessing
morphForTransition: anAssociation ifPresent: aBlockClosure

	^ self transitionMorphsDict at: (self transitionAssociationFrom: anAssociation value on: anAssociation key) ifPresent: aBlockClosure