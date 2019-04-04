element creation
add: aLevelElementType above: aLevelElementOrPosition
	"Does accept both positions and levelElements as parameter"
	^self levelElements add: 
		(DNMLevelElement newOfType: aLevelElementType above: aLevelElementOrPosition)
	
	 