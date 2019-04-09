as yet unclassified
testCreationForNumber

	| model |
	model := BTRConstantModel for: #V2;BTRNumberModel;1E;Constant1;SmallInteger;4;1;43;;.
	self assert: (model isKindOf: BTRNumberModel).