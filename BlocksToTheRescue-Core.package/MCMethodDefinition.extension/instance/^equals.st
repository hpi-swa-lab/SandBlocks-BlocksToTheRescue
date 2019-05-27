*BlocksToTheRescue-Core
= aDefinition

	^(super = aDefinition)
		and: [aDefinition sourceText btrEquals: self sourceText]
		and: [aDefinition category = self category]
		and: [aDefinition timeStamp = self timeStamp]