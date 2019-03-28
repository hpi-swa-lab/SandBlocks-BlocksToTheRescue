*ToolIconsPlus
isTraitOverridden: aSelector

	(self includesSelector: aSelector)
		ifFalse: [^ false].
	
	self users do: [ :class |
		((class includesSelector: aSelector)
		and: [(class>>aSelector) methodHome ~= self])
			ifTrue: [^ true]].
	^ false