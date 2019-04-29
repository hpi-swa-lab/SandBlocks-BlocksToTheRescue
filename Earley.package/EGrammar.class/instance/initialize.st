initialize-release
initialize

	super initialize.
	self rules: Dictionary new.
	self ruleCollection: OrderedCollection new