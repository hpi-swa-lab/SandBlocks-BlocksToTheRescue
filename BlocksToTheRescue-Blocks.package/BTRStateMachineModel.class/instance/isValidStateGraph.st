testing
isValidStateGraph

	^ [self validateStateGraph. true]
		on: BTRInvalidStateMachineException
		do: [false]