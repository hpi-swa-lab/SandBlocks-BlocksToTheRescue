interface-views
stateViewList

	^ self states
			collect: [:state | BTRStateWrapper with: state]