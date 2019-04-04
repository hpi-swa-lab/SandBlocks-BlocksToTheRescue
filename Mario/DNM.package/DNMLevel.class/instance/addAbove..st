element creation
addAbove: aLevelElementType
	"Adds above the last element in levelElements"
	^self add: aLevelElementType above: self levelElements last
	

	 