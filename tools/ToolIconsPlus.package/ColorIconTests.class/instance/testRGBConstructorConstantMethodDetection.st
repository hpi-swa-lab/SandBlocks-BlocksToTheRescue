testing
testRGBConstructorConstantMethodDetection

	self assert: (Color isMethodRGBColorConstant: #black) equals: false.
	self assert: (Color isMethodRGBColorConstant: #darkGray) equals: false.
	self assert: (Color isMethodRGBColorConstant: #paleRed) equals: false.
	
	self assert: (Color isMethodRGBColorConstant: #ice) equals: true.
	self assert: (Color isMethodRGBColorConstant: #iron) equals: true.
	self assert: (Color isMethodRGBColorConstant: #aqua) equals: true.