as yet unclassified
testCreationForBoolean

	| model |
	model := BTRConstantModel for: #V2;BTRBooleanModel;48;Constant2;UndefinedObject;5;1;nil;UndefinedObject;5;1;nil;True;6;1;true;;.
	self assert: (model isKindOf: BTRBooleanModel).