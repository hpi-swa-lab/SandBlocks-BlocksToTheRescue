ressource creation
createAnimatedCoinImageMorph
	"This is a workaround for a bug in the gif reader. Marcel provided us this piece of code, we did not touch it."
	|loadedRessource|
	loadedRessource := AnimatedImageMorph new.
	loadedRessource
		instVarNamed: #images put: OrderedCollection new;
		instVarNamed: #delays put: (Array new: 10 withAll: 100);
		setProperty: #isOpaque toValue: false. 

	1 to: 10 do: [:ea |
		| gif |
		gif := ImageReadWriter formFromFileNamed: (((DNMFileManager fileStreamNamed: ('Gold_',(ea asString),'.png')) fullName)).
		gif offset: (30 - gif width // 2) @ 0.
		loadedRessource images add: gif.].
	loadedRessource reset.
	^loadedRessource 
	
	
	
	