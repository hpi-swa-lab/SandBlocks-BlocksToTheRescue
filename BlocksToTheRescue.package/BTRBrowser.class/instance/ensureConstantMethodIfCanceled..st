constant methods
ensureConstantMethodIfCanceled: aBlock

	(self couldBecomeConstantMethod and: [self isConstantMethod not]) 
		ifTrue: [(UIManager confirm: 'This will transform the compiled method to a constant method' )
			ifTrue: [BTRConstantMethod fromCompiledMethod: self methodReference compiledMethod]
			ifFalse: aBlock]