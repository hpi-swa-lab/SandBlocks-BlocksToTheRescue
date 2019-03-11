*BlocksToTheRescue
parseExpression
	| t1 |
	currentTokenFirst == BTRBlockAttribute blockCharacter
		ifTrue: [self scanPast: #block.
			self parseCascade].
	self isName
		ifTrue: [self
				scanPast: (self resolve: currentToken).
			self isAssignment
				ifTrue: [t1 := self isAnsiAssignment
								ifTrue: [#ansiAssignment]
								ifFalse: [#assignment].
					self scanPast: t1.
					self parseExpression]
				ifFalse: [self parseCascade]]
		ifFalse: [self parseTerm.
			self parseCascade]