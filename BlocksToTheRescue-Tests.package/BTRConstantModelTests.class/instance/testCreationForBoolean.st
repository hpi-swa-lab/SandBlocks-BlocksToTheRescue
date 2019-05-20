as yet unclassified
testCreationForBoolean

	| model |
	model := BTRConstantModel for: #V2;BTRBooleanModel;3D;Constant2;Dictionary;14;1;((Dictionary new));False;7;1;false;;.
	self assert: (model isKindOf: BTRBooleanModel).