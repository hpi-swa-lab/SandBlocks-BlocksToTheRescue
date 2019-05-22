accessing
updateFrom: aSymbolOrAssociation

	aSymbolOrAssociation isSymbol
		ifTrue: [
			self targetStateName: aSymbolOrAssociation.
			self action: nil]
		ifFalse: [
			self targetStateName: aSymbolOrAssociation key.
			self action: aSymbolOrAssociation value].