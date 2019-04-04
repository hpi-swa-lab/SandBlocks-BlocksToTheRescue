initialization
initializeGIFs
	|manager|
	manager := DNMImageRessourceManager singleton.
	animationsBySymbol := Dictionary new
		add: #stand_left->(manager getRessource: #stand_left);
		add: #stand_right->(manager getRessource: #stand_right);
		add: #jump_left->(manager getRessource: #jump_left);
		add: #jump_right->(manager getRessource: #jump_right);
		add: #run_left->(manager getRessource: #run_left);
		add: #run_right->(manager getRessource: #run_right);
		yourself.
	animationsBySymbol do: [:gif | self addMorph: gif. gif isOpaque: false].
	self makeStatesInvisible.
	currentGIF := #stand_left.
	(animationsBySymbol at: currentGIF) visible: true.