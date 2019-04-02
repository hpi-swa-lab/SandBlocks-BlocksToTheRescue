accessing
signature: aString
		
	| pattern |
	pattern := (RBParser new initializeParserWith: aString asString) parseMessagePattern.
	self graph 
		selector: pattern selector asSymbol; flag: #TODO "what happens when selector changes?";
		parameterNames: (pattern arguments collect: [:each | each name])