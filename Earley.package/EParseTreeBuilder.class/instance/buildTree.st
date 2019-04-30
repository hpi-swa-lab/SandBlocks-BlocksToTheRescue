as yet unclassified
buildTree

	| startNodes |
	startNodes := self startNodes.
	startNodes 
		ifEmpty: [
			"self source copyFrom: 1 to: self nodesList size"
			self error: 'Could not parse the input! Last character at: ' , self nodesList size , ' => $' , (self source at: self nodesList size)].

	^ startNodes collect: [:each |
		self buildFrom: each]