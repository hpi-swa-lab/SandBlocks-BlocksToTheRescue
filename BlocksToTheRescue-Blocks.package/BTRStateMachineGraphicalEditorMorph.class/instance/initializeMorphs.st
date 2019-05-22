initialization
initializeMorphs

	self
		initializeMorphsForStates;
		initializeMorphsForTransitions;
		addAllMorphsInFrontOfLayer: (self transitionMorphsDict values collect: #nameMorph);
		applyViewData;
		updateStartArrow.