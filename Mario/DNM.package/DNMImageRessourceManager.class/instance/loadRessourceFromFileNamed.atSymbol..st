ressource creation
loadRessourceFromFileNamed: aFilename atSymbol: aSymbol
	|loadedRessource|
	(self isImageFile: aFilename)
		ifTrue: [loadedRessource := self createImageMorphFromFile: aFilename].
	((self isGifFile: aFilename) and: (aSymbol = #Coin))
		ifTrue: [loadedRessource := self createAnimatedCoinImageMorph]. 
	((self isGifFile: aFilename) and: (aSymbol ~= #Coin))
		ifTrue: [loadedRessource := self createAnimatedImageMorphFromFile: aFilename].
	loadedRessource ifNil: [self error: 'Not accepted file format'].
	self addRessource: loadedRessource atSymbol: aSymbol.
	
	