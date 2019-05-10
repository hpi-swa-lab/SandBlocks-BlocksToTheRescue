compliance
literalsDo: aBlock

	"Evaluate aBlock for each of the literals referenced by the receiver."
	self literals do: aBlock.