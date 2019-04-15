initialization
initializeState

	| model |
	model := BTRStateMachineModel new.
	(model addState: #small)
		setAsStart;
		addTransitionNamed: #eatMushroom target: #big;
		addTransitionNamed: #eatFireflower target: #fire;
		addTransitionNamed: #damage target: #died.
		
	(model addState: #big)
		addTransitionNamed: #eatMushroom target: #big;
		addTransitionNamed: #eatFireflower target: #fire;
		addTransitionNamed: #damage target: #small.
		
	(model addState: #fire)
		addTransitionNamed: #eatMushroom target: #fire;
		addTransitionNamed: #eatFireflower target: #fire;
		addTransitionNamed: #damage target: #big.
		
	model addState: #died.
	
	self state: model start