instance creation
fromCompiledMethod: aCompiledMethod

	^ (self 
		on: aCompiledMethod methodClass
		selector: aCompiledMethod selector)
		value: (aCompiledMethod valueWithReceiver: nil arguments: Array new)
		yourself