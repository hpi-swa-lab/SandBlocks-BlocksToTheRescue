tests
testStateNameWithSpaceRegression

	| originalModel recreatedModel |
	originalModel := BTRStateMachineModel new.
	originalModel addState: #'foo'.
	(originalModel addState: #'foo bar')
		addTransitionNamed: #'nospace' target: #'foo'.
	(originalModel addState: #'foo bar1')
		addTransitionNamed: #'with space' target: #'foo'.
	originalModel addState: #'foo bar 2'.
	
	recreatedModel := (ReadStream on: (String streamContents: [ :stream |
			 originalModel btrWriteScanOn: stream ])) btrScanFrom.
		
	self assert: originalModel equals: recreatedModel.