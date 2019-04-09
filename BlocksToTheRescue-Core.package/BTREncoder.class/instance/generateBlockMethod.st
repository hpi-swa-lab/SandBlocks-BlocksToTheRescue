as yet unclassified
generateBlockMethod

	^ BTRBlockMethod
		on: self methodNode methodClass
		selector: self methodNode selector
		parameterNames: self parameterNames
		model: self btrBlockNode key