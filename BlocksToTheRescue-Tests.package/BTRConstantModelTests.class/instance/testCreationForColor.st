as yet unclassified
testCreationForColor

	| model |
	model := BTRConstantModel for: #V2;BTRColorModel;55;Constant2;Dictionary;14;1;((Dictionary new));Color;1E;1;(Color r: 1 g: 0.955 b: 0.0);;.
	self assert: (model isKindOf: BTRColorModel).