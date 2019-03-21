tests
testClassVariableConstantMethodDetection

	self assert: (Color isMethodClassVariableGetter: (self getColorMethodNamed: #black)) equals: true.
	self assert: (Color isMethodClassVariableGetter: (self getColorMethodNamed: #darkGray)) equals: true.
	self assert: (Color isMethodClassVariableGetter: (self getColorMethodNamed: #paleRed)) equals: true.
	
	self assert: (Color isMethodClassVariableGetter: (self getColorMethodNamed: #ice)) equals: false.
	self assert: (Color isMethodClassVariableGetter: (self getColorMethodNamed: #iron)) equals: false.
	self assert: (Color isMethodClassVariableGetter: (self getColorMethodNamed: #aqua)) equals: false.