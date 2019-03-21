testing
testClassVariableConstantMethodDetection

	self assert: (Color isMethodClassVariableGetter: #black) equals: true.
	self assert: (Color isMethodClassVariableGetter: #darkGray) equals: true.
	self assert: (Color isMethodClassVariableGetter: #paleRed) equals: true.
	
	self assert: (Color isMethodClassVariableGetter: #ice) equals: false.
	self assert: (Color isMethodClassVariableGetter: #iron) equals: false.
	self assert: (Color isMethodClassVariableGetter: #aqua) equals: false.