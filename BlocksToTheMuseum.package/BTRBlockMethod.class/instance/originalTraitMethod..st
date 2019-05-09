compliance
originalTraitMethod: aCompiledMethod
	
	| methodState |
	methodState := TraitMethodState newFrom: self properties.
	methodState originalTraitMethod: aCompiledMethod.
	self properties: methodState.