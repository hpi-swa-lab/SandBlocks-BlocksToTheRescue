comparing
= anEState

	^ self class = anEState class and: [self ruleNumber = anEState ruleNumber 
		and: [self next = anEState next 
				and: [self start = anEState start]]]