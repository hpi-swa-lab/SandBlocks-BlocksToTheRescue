*BlocksToTheRescue-Core
insertBlock: aBTRBlockModel at: anInteger

	self
		replaceFrom: anInteger
		to: anInteger - 1
		with: (BTRBlockAttribute asTextFrom: aBTRBlockModel).