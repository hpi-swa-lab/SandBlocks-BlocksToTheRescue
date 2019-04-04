accessing
changeAttribute: anAttributeSymbol by: anAmount
	"Will use modifiers (if there are any) to modify amount and then apply it. This of course means that the attribute should be able do be multiplied by a number. It assumes that there is a selector '#anAttributeSymbol:' that allows us to set a new value for this attribute. If there is none, it will fail. Uses perform because it gives us the ability to change any attributes that have a setter."
	|selector newAttributeValue modifiedAmount|
	selector := (anAttributeSymbol,':') asSymbol.
	modifiedAmount := anAmount * (self modifierFor: anAttributeSymbol).
	newAttributeValue := (self perform: anAttributeSymbol ) + modifiedAmount.
	self perform: selector with: newAttributeValue.