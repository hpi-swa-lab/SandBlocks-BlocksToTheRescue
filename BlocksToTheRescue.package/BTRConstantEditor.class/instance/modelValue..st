as yet unclassified
modelValue: anObject
	
	self getValueSelector numArgs = 2
			ifTrue: [model perform: self getValueSelector with: anObject with: self]
			ifFalse: [model perform: self getValueSelector with: anObject]