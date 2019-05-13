initialization
initializeMorphs

	self
		initializeMorphsForStates;
		initializeMorphsForTransitions;
		addAllMorphsInFrontOfLayer: self transitionMorphsDict values;
		addAllMorphsInFrontOfLayer: (self transitionMorphsDict values collect: #nameMorph)";
		addAllMorphsInFrontOfLayer: self stateMorphsDict values".