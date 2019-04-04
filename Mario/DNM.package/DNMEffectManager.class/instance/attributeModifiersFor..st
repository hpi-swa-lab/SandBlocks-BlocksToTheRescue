accessing
attributeModifiersFor: anAttribute
	^self modifiers select: [:aModifier | aModifier attribute = anAttribute]