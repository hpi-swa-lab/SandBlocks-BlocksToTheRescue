accessing
stateList

	^ self stateMachineModel states collect: [:state | BTRStateWrapper with: state]