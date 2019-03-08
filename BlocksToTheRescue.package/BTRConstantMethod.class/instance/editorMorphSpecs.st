as yet unclassified
editorMorphSpecs

	self value isColor ifTrue: 
		[^ {#setValueSelector -> #selectedColor:.
		#getValueSelector -> #selectedColor.
		#valueChangedSelector ->#colorExpression.}].
	self value isMorph ifTrue: 
		[^ {}].
	self shouldBeImplemented.