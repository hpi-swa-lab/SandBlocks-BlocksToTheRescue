accessing
morphForTransition: anAssociation

	^ self transitionMorphsDict at: (self transitionAssociationFrom: anAssociation value on: anAssociation key)