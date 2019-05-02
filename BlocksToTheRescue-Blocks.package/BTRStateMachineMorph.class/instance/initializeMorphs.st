initialization
initializeMorphs

	self
		initializeMorphsForStates;
		initializeMorphsForTransitions;
		addMorph: (self transitionLayer
			name: 'transitions';
			clipSubmorphs: true;
			addAllMorphs: self transitionMorphsDict values;
			yourself);
		addMorph: (self transitionLabelLayer
			name: 'transition labels';
			clipSubmorphs: true;
			addAllMorphs: (self transitionMorphsDict values collect: [:t | t nameMorph]);
			yourself);
		addMorph: (self stateLayer
			name: 'states';
			clipSubmorphs: true;
			addAllMorphs: self stateMorphsDict values;
			yourself).