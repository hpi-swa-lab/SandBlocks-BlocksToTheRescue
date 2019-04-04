element creation
addRight: aLevelElementType
	"Adds right of the last element in levelElements"
	^self add: aLevelElementType rightOf: (self levelElements last)
	

	 