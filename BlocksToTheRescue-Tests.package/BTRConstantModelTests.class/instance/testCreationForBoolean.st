as yet unclassified
testCreationForBoolean

	| model |
	model := BTRConstantModel for: #V2;BTRBooleanModel;3B;Constant2;Dictionary;14;1;((Dictionary new));True;6;1;true;;.
	self assert: (model isKindOf: BTRBooleanModel).