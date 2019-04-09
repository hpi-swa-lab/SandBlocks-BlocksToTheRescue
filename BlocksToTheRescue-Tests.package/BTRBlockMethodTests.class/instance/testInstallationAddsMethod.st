tests
testInstallationAddsMethod

	| selector |
	selector := (self selector, #InstallationMethod) asSymbol.
	[(BTRBlockMethod 
		on: self class
		selector: selector
		parameterNames: {}
		model: self blockModelClass new) install.
	self assert: (self class compiledMethodAt: selector) isBTRBlockMethod] 
		ensure: [self class removeSelector: selector].
	