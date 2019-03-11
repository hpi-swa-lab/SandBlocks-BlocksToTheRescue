as yet unclassified
testDoIt

	| pluggableTextMorph morph |
	pluggableTextMorph := PluggableTextMorphPlus new.
	pluggableTextMorph setSelection: {0 . 0}.
	morph := Morph new.
	Compiler new evaluate: 
			(Text string: (String value: 1) attribute: (BTRBlockAttribute new anchoredMorph: morph)),
			(Text withAll: ' extent: 200 @ 200.')
			in: nil
			to: nil
			environment: Smalltalk globals
			notifying: nil
			ifFail: []
			logged: true.	
	
	self assert: 200 @ 200 equals: morph extent.
		
	