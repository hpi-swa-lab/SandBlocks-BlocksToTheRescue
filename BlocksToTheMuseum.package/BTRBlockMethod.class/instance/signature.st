accessing
signature

	self selector isUnary ifTrue: [^ self selector].
	^ (self selector keywords with: self parameterNames collect:
		[:keyword :parameter | keyword, ' ', parameter]) joinSeparatedBy: ' '