accessing
signature: aString

	self selector: (Parser new parseSelector: aString).
	self parameterNames: (Parser new parseParameterNames: aString).