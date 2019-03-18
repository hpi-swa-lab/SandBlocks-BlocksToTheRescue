testing
testDoIt

	| pluggableTextMorph morph newExtent |
	pluggableTextMorph := PluggableTextMorphPlus new.
	pluggableTextMorph setSelection: {0 . 0}.
	morph := Morph new.
	newExtent := self newMorphExtent.

	Compiler new
		evaluate: 
			(Text string: (String value: 1) attribute: (BTRBlockAttribute new anchoredMorph: morph)),
			(Text withAll: ' extent: ', newExtent)
		in: nil
		to: nil
		notifying: nil
		ifFail: []
		logged: true.	

	self assert: newExtent equals: morph extent.
