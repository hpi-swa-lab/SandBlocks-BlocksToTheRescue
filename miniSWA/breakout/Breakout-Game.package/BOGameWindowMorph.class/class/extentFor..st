accessing
extentFor: sizeOption

	sizeOption == #fullScreen ifTrue: [^ self fullScreenExtent].
	sizeOption == #windowed ifTrue: [^ self windowedExtent].
	^ sizeOption