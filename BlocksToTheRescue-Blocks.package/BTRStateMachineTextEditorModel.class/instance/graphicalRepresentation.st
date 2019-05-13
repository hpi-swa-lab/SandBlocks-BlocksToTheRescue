views
graphicalRepresentation

	| area y statesAndButtons |
	y := 0.

	area := Morph new
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself.

	statesAndButtons := Dictionary new: self stateMachineModel states size.
	(self stateMachineModel states
		collect: [:state | SimpleButtonMorph new
			label: state name;
			actionSelector: nil;
			target: nil;
			color: Color white;
			yourself])
		do: [:button |
			area addMorph: button.
			button position: 0@y.
			y := y + button height + 20].

	^ area