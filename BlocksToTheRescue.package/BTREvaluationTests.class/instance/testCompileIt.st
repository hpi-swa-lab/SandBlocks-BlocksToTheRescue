as yet unclassified
testCompileIt

	| morph |
	self class
		compile: 
			(Text withAll: 'block  ^ '),
			(Text string: (String value: 1) attribute: (BTRBlockAttribute new anchoredMorph: Morph new)),
			(Text withAll: ' extent: 200 @ 200.')
		classified: nil
		notifying: nil.
	morph := self block.
	self class removeSelector: #block.
			
	self assert: 200 @ 200 equals: morph extent.
		
	