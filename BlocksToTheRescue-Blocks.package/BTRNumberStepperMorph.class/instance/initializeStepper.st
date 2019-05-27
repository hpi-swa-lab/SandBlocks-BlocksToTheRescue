initialization
initializeStepper

	self stepper: (BTRStepperMorphPlus new
		addDependent: self;
		yourself).