tests
testRGBConstructorConstantMethodDetection

	self assert: (Color isMethodRGBColorConstant: (self getColorMethodNamed: #black)) equals: false.
	self assert: (Color isMethodRGBColorConstant: (self getColorMethodNamed: #darkGray)) equals: false.
	self assert: (Color isMethodRGBColorConstant: (self getColorMethodNamed: #paleRed)) equals: false.
	
	self assert: (Color isMethodRGBColorConstant: (self getColorMethodNamed: #ice)) equals: true.
	self assert: (Color isMethodRGBColorConstant: (self getColorMethodNamed: #iron)) equals: true.
	self assert: (Color isMethodRGBColorConstant: (self getColorMethodNamed: #aqua)) equals: true.