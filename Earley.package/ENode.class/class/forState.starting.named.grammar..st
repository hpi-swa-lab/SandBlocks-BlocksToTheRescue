as yet unclassified
forState: anEEndState starting: aNumber named: aString grammar: anEGrammar

	^ self new
		name: aString;
		start: aNumber;
		end: anEEndState end - 1;
		ruleNumber: anEEndState ruleNumber;
		grammar: anEGrammar;
		yourself