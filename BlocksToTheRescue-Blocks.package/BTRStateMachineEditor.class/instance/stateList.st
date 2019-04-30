accessing
stateList

	^ self stateMachineModel statesSorted collect: [:state | BTRStateWrapper with: state]