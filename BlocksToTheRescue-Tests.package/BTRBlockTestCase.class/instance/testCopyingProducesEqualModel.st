as yet unclassified
testCopyingProducesEqualModel

	| original copy |
	original := self createPlainInstance.
	copy := original copy.
	self assert: original hash equals: copy hash.
	self assert: original equals: copy.