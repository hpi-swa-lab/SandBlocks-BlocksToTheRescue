as yet unclassified
splitSelection
	
	| sourceString counter |
	sourceString := ''.
	counter := 0.
	paragraph text 
		doWithIndex: [ :aCharacter :index |
			| textAttributes |
			textAttributes := paragraph text attributesAt: index.
			textAttributes
				detect: [ :aTextAttribute | aTextAttribute anchoredMorph isNil not]
				ifFound: [ :aTextAttribute |  | name |
					name := 'neceruse', counter asString.
					self bindingsAt: name put: aTextAttribute anchoredMorph. 
					"(self bindingOf: name) value: aTextAttribute anchoredMorph."
					sourceString := sourceString, '(', name, ' value)'.							 
			 		counter := counter + 1]
				ifNone: [sourceString := sourceString, aCharacter]].
	Transcript showln: sourceString.
	
	^ sourceString 