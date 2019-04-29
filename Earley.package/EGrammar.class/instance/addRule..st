adding
addRule: anEProductionRule

	self rules at: anEProductionRule name 
		ifAbsentPut: [OrderedCollection new].
	(self rules at: anEProductionRule name) add: anEProductionRule.
	self ruleCollection add: anEProductionRule
	