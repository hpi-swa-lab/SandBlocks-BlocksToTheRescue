tests
testInstallationAddsMethod

	| selector |
	selector := (self selector, #InstallationMethod) asSymbol.
	[(self blockModelClass on: self class selector: selector)
		install.
	self assert: (self class compiledMethodAt: selector) isBTRBlockModel] 
		ensure: [self class removeSelector: selector].
	