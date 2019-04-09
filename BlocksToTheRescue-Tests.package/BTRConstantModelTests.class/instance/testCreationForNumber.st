as yet unclassified
testCreationForNumber

	| model |
	model := BTRConstantModel for: #V2;BTRNumberModel;52;N1;SmallInteger;4;1;43;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;;.
	self assert: (model isKindOf: BTRNumberModel).