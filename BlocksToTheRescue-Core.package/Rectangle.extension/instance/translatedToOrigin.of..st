*BlocksToTheRescue-Core
translatedToOrigin: aSymbol of: aRectangle

	^ self translateBy: (aRectangle perform: aSymbol) - (self perform: aSymbol)