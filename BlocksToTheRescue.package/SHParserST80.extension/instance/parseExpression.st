*BlocksToTheRescue
parseExpression
	| assignType |
	currentTokenFirst == BTRBlockAttribute blockCharacter
		ifTrue: [self scanPast: #block.
				self parseCascade].
	self isName 
		ifTrue: [
			self scanPast: (self resolve: currentToken).
			self isAssignment 
				ifTrue: [
					assignType := self isAnsiAssignment 
						ifTrue: [#ansiAssignment]
						ifFalse: [#assignment].
					self scanPast: assignType.
					self parseExpression]
				ifFalse: [self parseCascade]]
		ifFalse: [
			self parseTerm.
			self parseCascade]