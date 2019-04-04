element creation
add: aLevelElementType below: aLevelElement
	^self levelElements add: 
		(DNMLevelElement newOfType: aLevelElementType at: (aLevelElement bottomLeft))
	
	 