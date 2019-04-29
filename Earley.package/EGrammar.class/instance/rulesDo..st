enumerating
rulesDo: aBlock

	self rules do: [:each | 
		each value do: aBlock]