tests
testInstallationAddsMethod

	| selector |
	selector := (self selector, #InstallationMethod) asSymbol.
	[BTRBlocketMethod 
		compile: self blockModelClass new 
		in: self class 
		signature: selector.
	self assert: (self class compiledMethodAt: selector) isBTRBlockMethod] 
		ensure: [self class removeSelector: selector].
	