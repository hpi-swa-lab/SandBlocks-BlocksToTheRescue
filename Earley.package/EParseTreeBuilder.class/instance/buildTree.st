as yet unclassified
buildTree

	| startNodes |
	startNodes := self startNodes.
	startNodes 
		ifEmpty: [self error: 'Could not parse the input'].

	^ startNodes collect: [:each |
		self buildFrom: each]