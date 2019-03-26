accessing
content: aTBTRBlockModel
	
	content ifNotNil: [content removeDependent: self].
	content := aTBTRBlockModel.
	content ifNotNil: [content addDependent: self].