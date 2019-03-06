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
					name := 'block', aTextAttribute anchoredMorph identityHash asString, counter asString.
					self bindingsAt: name put: aTextAttribute anchoredMorph. 
					"(self bindingOf: name) value: aTextAttribute anchoredMorph."
					blockReference := '(', name, ' value)'.
					sourceString := sourceString, blockReference.							 
			 		counter := counter + 1.
					self addedCharacters: self addedCharacters + blockReference size]
				ifNone: [sourceString := sourceString, aCharacter]].
	
	Transcript showln: sourceString.
	^ sourceString 