as yet unclassified
splitSelectionWithContext: aContext
	
	| sourceString counter |
	sourceString := ''.
	counter := 0.
	paragraph text 
		doWithIndex: [ :aCharacter :index |
			| textAttributes |
			textAttributes := paragraph text attributesAt: index.
			textAttributes do: [ :aTextAttribute | aTextAttribute anchoredMorph
					ifTrue: [ | name |
						name := 'NEVER_USE_THIS_NAME_I_SAID' counter asString.
						aContext at: name put: aTextAttribute anchoredMorph.
						sourceString = sourceString, ' ', name, ' value'.							 
		 				counter := counter + 1]
					ifFalse: [sourceString = sourceString, aCharacter]]].
			
	^ sourceString 