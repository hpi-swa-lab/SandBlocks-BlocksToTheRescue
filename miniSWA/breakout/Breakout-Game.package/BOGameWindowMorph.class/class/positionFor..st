accessing
positionFor: sizeOption

	sizeOption == #fullScreen ifTrue: [^ self fullScreenPosition].
	sizeOption == #windowed ifTrue: [^ self windowedPosition].
	^ sizeOption