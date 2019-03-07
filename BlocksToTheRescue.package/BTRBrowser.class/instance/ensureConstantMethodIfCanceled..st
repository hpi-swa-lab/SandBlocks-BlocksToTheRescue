constant methods
ensureConstantMethodIfCanceled: aBlock

	(self couldBecomeConstantMethod) 
		ifTrue: [(UIManager confirm: 'This will transform the compiled method to a constant method' )
			ifTrue: [BTRConstantMethod fromCompiledMethod: self method]
			ifFalse: aBlock]