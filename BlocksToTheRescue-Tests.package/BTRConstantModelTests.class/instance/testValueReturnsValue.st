as yet unclassified
testValueReturnsValue

	| model color |
	color := #V2;BTRColorModel;62;Constant2;UndefinedObject;5;1;nil;UndefinedObject;5;1;nil;Color;1E;1;(Color r: 0.0 g: 1 b: 0.502);;.
	model := BTRConstantModel for: color.
	self assert: color equals: model value.