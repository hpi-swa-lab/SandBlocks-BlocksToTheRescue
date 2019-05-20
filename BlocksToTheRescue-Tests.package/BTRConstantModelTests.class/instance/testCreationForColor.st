as yet unclassified
testCreationForColor

	| model |
	model := BTRConstantModel for: #V2;BTRColorModel;57;Constant2;Dictionary;14;1;((Dictionary new));TranslucentColor;15;1;(Color transparent);;.
	self assert: (model isKindOf: BTRColorModel).