tests
testInstallationAddsMethod

	| selector |
	selector := (self selector, #InstallationMethod) asSymbol.
	[BTRConstantMethod
		on: self class
		selector: selector.
	self assert: (self class compiledMethodAt: selector) isConstantMethod] 
		ensure: [self class removeSelector: selector].
	