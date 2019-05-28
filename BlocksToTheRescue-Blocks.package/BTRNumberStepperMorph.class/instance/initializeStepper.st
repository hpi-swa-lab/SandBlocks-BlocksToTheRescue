initialization
initializeStepper

	self stepper: (BTRStepperMorph new
		addDependent: self;
		yourself).