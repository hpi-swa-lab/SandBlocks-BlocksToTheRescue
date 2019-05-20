tests
testModeContainBottomRight

	| view |
	self morph
		extent: 80@40;
		origin: #bottomRight.
	view := self morph imageForm.
	self assert: Color black equals: (view colorAt: 40@0).
	self assert: Color white equals: (view colorAt: 59@0).
	self assert: Color blue equals: (view colorAt: 79@0).
	self assert: Color green equals: (view colorAt: 40@19).
	self assert: Color orange equals: (view colorAt: 59@19).
	self assert: Color red equals: (view colorAt: 79@19).
	self assert: Color magenta equals: (view colorAt: 40@39).
	self assert: Color cyan equals: (view colorAt: 59@39).
	self assert: Color yellow equals: (view colorAt: 79@39).

	self assert: Color transparent equals: (view colorAt: 0@0).