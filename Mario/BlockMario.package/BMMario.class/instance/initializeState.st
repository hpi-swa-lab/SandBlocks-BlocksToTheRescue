initialization
initializeState

	| model |
	model := BTRStateMachineModel new.
	(model addState: #small)
		setAsStart;
		onEnterDo: [:symbol :state | state customObject: BMSmallState new];
		addTransitionNamed: #eatMushroom target: #big;
		addTransitionNamed: #eatFireflower target: #fire;
		addTransitionNamed: #damage target: #died.
		
	(model addState: #big)
		onEnterDo: [:symbol :state | state customObject: BMBigState new];
		addTransitionNamed: #eatMushroom target: #big;
		addTransitionNamed: #eatFireflower target: #fire;
		addTransitionNamed: #damage target: #small.
		
	(model addState: #fire)
		onEnterDo: [:symbol :state | state customObject: BMFireState new];
		addTransitionNamed: #eatMushroom target: #fire;
		addTransitionNamed: #eatFireflower target: #fire;
		addTransitionNamed: #damage target: #big.
		
	(model addState: #died)
		onEnterDo: [:symbol :state | state customObject: BMSmallState new].
	
	self state: model start