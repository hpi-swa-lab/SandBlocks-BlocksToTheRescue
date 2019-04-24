accessing
block: aTBTRBlockModel

	block ifNotNil: [ block removeDependent: self ].
	block := aTBTRBlockModel.
	block ifNotNil: [ block addDependent: self ].