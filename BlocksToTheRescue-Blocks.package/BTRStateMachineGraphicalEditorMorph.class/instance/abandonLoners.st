state machine editing
abandonLoners

	self stateMachineModel states
		select: [:state | state isLoner]
		thenDo: [:state | self stateMachineModel removeState: state].