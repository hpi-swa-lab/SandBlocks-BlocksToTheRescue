change state
changeTo: aSymbol
	(currentGIF ~= aSymbol) 
		ifTrue:
			[(animationsBySymbol at: currentGIF) visible: false.
			currentGIF := aSymbol.
			(animationsBySymbol at: currentGIF) visible: true].