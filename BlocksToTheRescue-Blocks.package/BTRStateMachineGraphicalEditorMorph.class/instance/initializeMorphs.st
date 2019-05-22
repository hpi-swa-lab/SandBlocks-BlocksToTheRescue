initialization
initializeMorphs

	self
		initializeMorphsForStates;
		initializeMorphsForTransitions;
		addAllMorphsInFrontOfLayer: (self transitionMorphs collect: #nameMorph);
		applyViewData;
		updateStartArrow.