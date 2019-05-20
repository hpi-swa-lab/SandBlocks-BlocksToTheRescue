as yet unclassified
testCreationForImage

	| model |
	model := BTRConstantModel for: #V2;BTRImageModel;45;Constant2;Dictionary;14;1;((Dictionary new));UndefinedObject;5;1;nil;;.
	self assert: (model isKindOf: BTRImageModel).