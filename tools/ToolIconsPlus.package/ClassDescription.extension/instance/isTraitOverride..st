*ToolIconsPlus
isTraitOverride: aSelector

	(self includesSelector: aSelector)
		ifFalse: [^ false].
	
	self allTraits do: [ :trait |
		((trait includesSelector: aSelector)
		and: [(self>>aSelector) methodHome ~= trait])
			ifTrue: [^ true]].
	^ false