*BlocksToTheRescue-Core
scaleContain: aRectangle origin: aSymbol

	^ ((self extent isZero or: [aRectangle extent isZero])
		ifTrue: [0 asPoint]
		ifFalse: [aRectangle aspectRatio > (self aspectRatio)
			ifFalse: [aRectangle width @ (self height * aRectangle width / self width)]
			ifTrue: [(self width * aRectangle height / self height) @ aRectangle height]])
			asRectangle translatedToOrigin: aSymbol of: aRectangle