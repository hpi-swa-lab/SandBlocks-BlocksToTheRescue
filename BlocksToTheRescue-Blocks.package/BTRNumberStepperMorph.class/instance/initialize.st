as yet unclassified
initialize

	| stepper |
	super initialize.
	self inputMorph: (PluggableTextMorphPlus new
		readOnly: true;
		flag: #todo;
		acceptOnCR: true;
		yourself).
	stepper := BTRStepperMorph new
		addDependent: self;
		yourself.
	self
		value: self defaultValue;
		color: Color gray;
		extent: (4 * stepper width)@stepper height;
		layoutPolicy: ProportionalLayout new;
		addMorph: self inputMorph fullFrame: (LayoutFrame
			fractions: (0@0 extent: 1@1)
			offsets: (0@0 extent: stepper width negated@0));
		addMorph: stepper fullFrame: (LayoutFrame
			fractions: (1@0 corner: 1@1) 
			offsets: (stepper width negated@0 corner: 0@0)).