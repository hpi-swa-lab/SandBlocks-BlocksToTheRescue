as yet unclassified
splitSelection
	
	| sourceString counter |
	self addedCharacters: 0.
	sourceString := ''.
	counter := 0.
	paragraph text 
		doWithIndex: [ :aCharacter :index |
			| textAttributes |
			textAttributes := paragraph text attributesAt: index.
			textAttributes
				detect: [ :aTextAttribute | aTextAttribute anchoredMorph isNil not]
				ifFound: [ :aTextAttribute |  | name blockReference |
					"We have to ensure that we definitely get a unique name for the bindings. I fsomeone really uses block<hasIDOfaBlock>_<number>, we can't help him."
					name := 'block', aTextAttribute anchoredMorph identityHash asString, '_', counter asString.
					self bindingsAt: name put: aTextAttribute anchoredMorph. 
					"(self bindingOf: name) value: aTextAttribute anchoredMorph."
					blockReference := '(', name, ' value)'.
					sourceString := sourceString, blockReference.							 
			 		counter := counter + 1.
					self addedCharacters: self addedCharacters + blockReference size]
				ifNone: [sourceString := sourceString, aCharacter]].
	
	^ sourceString 