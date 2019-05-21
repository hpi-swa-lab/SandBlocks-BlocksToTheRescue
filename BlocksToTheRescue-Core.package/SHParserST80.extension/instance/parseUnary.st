*BlocksToTheRescue-Core
parseUnary
	| unary type |
	
    [self isName or: [self isBTRBlock]]
        whileTrue: [
			unary := currentToken.
			type := #unary.
			(unary isEmpty or:[(Symbol lookup: unary) notNil])
				ifFalse:[
					type := (Symbol thatStartsCaseSensitive: unary skipping: nil)
						ifNil: [#undefinedUnary]
						ifNotNil:[#incompleteUnary]].
			self scanPast: type]
