accessing
defaultParameterNames

	^ Character alphabet asOrderedCollection 
		collect: #asString 
		from: 1 
		to: self numArgs