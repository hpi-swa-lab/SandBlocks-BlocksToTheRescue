element creation
add: aLevelElementType leftOf: aLevelElementOrPosition
	"Does accept both positions and levelElements as parameter"
	^self levelElements add: 
		(DNMLevelElement newOfType: aLevelElementType leftOf: aLevelElementOrPosition)
	
	 