element creation
add: aLevelElementType rightOf: aLevelElement
	^self levelElements add: 
		(DNMLevelElement newOfType: aLevelElementType at: (aLevelElement topRight))
	
	 