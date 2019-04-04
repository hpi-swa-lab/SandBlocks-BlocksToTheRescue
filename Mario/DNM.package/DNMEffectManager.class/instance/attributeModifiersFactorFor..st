accessing
attributeModifiersFactorFor: anAttribute
	"returns 1 + the sum of all modifiers affecting this attribute"
	|affectingModifiers|
	affectingModifiers := self attributeModifiersFor: (anAttribute asSymbol).
	^affectingModifiers inject: 1 into: [:sum :aModifier | sum + aModifier factor]