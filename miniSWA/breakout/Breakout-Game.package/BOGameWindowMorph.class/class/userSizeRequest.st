user interface
userSizeRequest

	^ UIManager default
		chooseFrom: #('Fullscreen' 'Windowed')
		values: #(fullScreen windowed)
		title: 'How do you want to start Breakout?'