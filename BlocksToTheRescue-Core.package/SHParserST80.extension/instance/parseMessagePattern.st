*BlocksToTheRescue-Core
parseMessagePattern   

	(self isName or: [self isBTRBlock])
		ifTrue: [self parseUnaryMessagePattern]
		ifFalse: [
			self isBinary
				ifTrue:[self parseBinaryMessagePattern]
				ifFalse:[
					self failUnless: self isKeyword.
					self parseKeywordMessagePattern]]