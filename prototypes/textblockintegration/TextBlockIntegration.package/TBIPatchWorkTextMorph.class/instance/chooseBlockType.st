as yet unclassified
chooseBlockType

	^ UIManager default 
		chooseFrom: (self registeredBlockClassses collect: [:each | each name])
		values: self registeredBlockClassses