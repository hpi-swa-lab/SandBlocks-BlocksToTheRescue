as yet unclassified
testCreationForMorph

	| model |
	model := BTRConstantModel for: Morph new.
	self assert: (model isKindOf: BTRMorphModel).