as yet unclassified
testValueReturnsValue

	| model color |
	color := #V2;BTRColorModel;57;Constant2;Dictionary;14;1;((Dictionary new));TranslucentColor;15;1;(Color transparent);;.
	model := BTRConstantModel for: color.
	self assert: color equals: model value.