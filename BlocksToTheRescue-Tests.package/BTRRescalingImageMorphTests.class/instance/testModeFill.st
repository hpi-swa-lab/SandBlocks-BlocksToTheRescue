tests
testModeFill

	| view |
	self morph
		extent: 40@80;
		origin: #topLeft.
	view := self morph imageForm.
	self assert: Color black equals: (view colorAt: 0@0).
	self assert: Color white equals: (view colorAt: 19@0).
	self assert: Color blue equals: (view colorAt: 39@0).
	self assert: Color green equals: (view colorAt: 0@39).
	self assert: Color orange equals: (view colorAt: 19@39).
	self assert: Color red equals: (view colorAt: 39@39).
	self assert: Color magenta equals: (view colorAt: 0@79).
	self assert: Color cyan equals: (view colorAt: 19@79).
	self assert: Color yellow equals: (view colorAt: 39@79).