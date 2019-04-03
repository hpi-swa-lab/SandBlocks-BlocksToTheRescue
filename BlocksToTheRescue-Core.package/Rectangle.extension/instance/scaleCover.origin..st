*BlocksToTheRescue-Core
scaleCover: aRectangle origin: aSymbol

	^ ((self extent isZero or: [aRectangle extent isZero])
		ifTrue: [0 asPoint]
		ifFalse: [aRectangle aspectRatio > (self aspectRatio)
			ifTrue: [aRectangle width @ (self height * aRectangle width / self width)]
			ifFalse: [(self width * aRectangle height / self height) @ aRectangle height]])
			asRectangle expanded translatedToOrigin: aSymbol of: aRectangle