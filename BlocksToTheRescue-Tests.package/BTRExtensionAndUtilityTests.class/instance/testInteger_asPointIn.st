tests
testInteger_asPointIn

	| extent |
	extent := 1@1.
	self should: [-1 asPointIn: extent] raise: Error.
	self should: [0 asPointIn: extent] raise: Error.
	self assert: 1@1 equals: (1 asPointIn: extent).
	self should: [2 asPointIn: extent] raise: Error.
	
	extent := 2@3.
	self assert: 1@1 equals: (1 asPointIn: extent).
	self assert: 1@2 equals: (3 asPointIn: extent).
	self assert: 2@2 equals: (4 asPointIn: extent).
	self assert: 1@3 equals: (5 asPointIn: extent).
	self assert: 2@3 equals: (6 asPointIn: extent).
	self should: [7 asPointIn: extent] raise: Error.
	
	extent := 3@2.
	self assert: 1@1 equals: (1 asPointIn: extent).
	self assert: 3@1 equals: (3 asPointIn: extent).
	self assert: 1@2 equals: (4 asPointIn: extent).
	self assert: 2@2 equals: (5 asPointIn: extent).
	self assert: 3@2 equals: (6 asPointIn: extent).
	self should: [7 asPointIn: extent] raise: Error.
	
	extent := 4@4.
	self assert: 3@4 equals: (15 asPointIn: extent).
	self assert: 4@4 equals: (16 asPointIn: extent).