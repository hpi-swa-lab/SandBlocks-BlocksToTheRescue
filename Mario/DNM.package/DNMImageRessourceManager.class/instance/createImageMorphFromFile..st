ressource creation
createImageMorphFromFile: aFilename
	^ImageMorph new setNewImageFrom: (DNMFileManager ressourceNamed: aFilename)
	
	
	
	