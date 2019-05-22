instance creation
named: messageSymbol source: aSymbol

	^ self basicNew
		name: messageSymbol;
		sourceStateName: aSymbol
		initialize;
		yourself