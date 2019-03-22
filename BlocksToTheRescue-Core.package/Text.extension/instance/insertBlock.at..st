*BlocksToTheRescue-Core
insertBlock: aTBTRBlockModel at: anInteger

	self
		replaceFrom: anInteger
		to: anInteger - 1
		with: (Text
			string: BTRBlockAttribute blockCharacter asString
			attribute: (BTRBlockAttribute new
				blockModel: aTBTRBlockModel;
				yourself)).