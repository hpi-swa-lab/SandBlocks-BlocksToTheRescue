accessing
content: anObject
	
	content ifNotNil: [content removeDependent: self].
	content := anObject.
	content ifNotNil: [content addDependent: self].