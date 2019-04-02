as yet unclassified
example6

	Transcript showln: 'Halt after printing this.'.
	#V2;BTRBreakpointModel;7F;1;(BTRBreakpointModel basicNew instVarAt: 1 put: ((Dictionary new)); instVarAt: 2 put: true; instVarAt: 3 put: false; yourself);.
	Transcript showln: 'I was halted before printing this.'.