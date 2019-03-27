*BlocksToTheRescue-Core
encodeBlock: aBlock

	^self
		name: aBlock
		key: aBlock
		class: BTRBlockNode
		type: LdLitType
		set: litSet