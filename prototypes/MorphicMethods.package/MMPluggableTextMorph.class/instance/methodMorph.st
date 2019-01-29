as yet unclassified
methodMorph

	| class selector method fallBackMorph |
	class := self model selectedClassOrMetaClass.
	selector := self model selectedMessageName.
	fallBackMorph := Morph new color: Color random; yourself.
	
	class ifNil: [^ fallBackMorph].
	selector ifNil: [^ fallBackMorph].
	method := class >> selector.
	
	^ method isCompiledMethod
		ifTrue: [fallBackMorph]
		ifFalse: [method]
