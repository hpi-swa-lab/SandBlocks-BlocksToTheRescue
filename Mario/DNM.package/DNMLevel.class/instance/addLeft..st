element creation
addLeft: aLevelElementType
	"Adds left of the last element in levelElements"
	^self add: aLevelElementType leftOf: self levelElements last
	

	 