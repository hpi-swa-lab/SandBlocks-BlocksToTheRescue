enumerating
startRulesWithIndexDo: aBlock

	self rulesDoWithIndex: [:each :index | (self isStartRule: each) 
			ifTrue: [aBlock value: each value: index]]