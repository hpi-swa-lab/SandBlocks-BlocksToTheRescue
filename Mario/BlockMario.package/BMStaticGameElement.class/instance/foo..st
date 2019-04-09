as yet unclassified
foo: aBool

	(aBool ~= foo)
		ifTrue: [
				aBool 
					ifTrue: [self newForm: self form lighter]
					ifFalse: [self newForm: self form darker]].
	super foo: aBool.
		