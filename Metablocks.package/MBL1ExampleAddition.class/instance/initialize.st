as yet unclassified
initialize

	self control: MBL1ControlFlow new.
	self input1: MBL1DataFlow new.
	self input2: MBL1DataFlow new.
	self addition: (MBL1Statementblock new
		block: [:a :b | a+b];
		linkInput: input1;
		linkInput: input2;
		linkInput: control;
		yourself).
	self output: (MBL1DataFlow new
		attachAfter: addition;
		yourself).
	self signal: (MBL1OutputSignal new 
		linkInput: output;
		yourself).
