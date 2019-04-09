as yet unclassified
testCreationForNumber

	| model |
	model := BTRConstantModel for: 1.
	self assert: (model isKindOf: BTRNumberModel).
