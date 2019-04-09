as yet unclassified
testCreationForBoolean

	| model |
	model := BTRConstantModel for: #V2;BTRBooleanModel;18;Constant1;True;6;1;true;;.
	self assert: (model isKindOf: BTRBooleanModel).