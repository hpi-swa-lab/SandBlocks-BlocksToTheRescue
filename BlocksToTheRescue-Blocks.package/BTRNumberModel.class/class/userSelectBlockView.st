insertion
userSelectBlockView

	^ UIManager default
			chooseFrom: #('Slider' 'Stepper')
			values: {{BTRSliderInlineView . BTRSliderEditorView} . {BTRNumberStepperMorph . BTRNumberStepperMorph}}
			title: 'Block View?'