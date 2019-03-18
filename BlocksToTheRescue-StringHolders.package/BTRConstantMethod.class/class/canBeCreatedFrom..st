instance creation
canBeCreatedFrom: aCompiledMethod

	^ aCompiledMethod numArgs isZero 
		and: [[aCompiledMethod valueWithReceiver: nil arguments: Array new. true] 
			on: Exception
			do: [false]]
	
	