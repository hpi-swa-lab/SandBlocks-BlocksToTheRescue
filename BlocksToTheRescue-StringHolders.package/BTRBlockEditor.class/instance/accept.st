actions
accept

	self dependents do: [:each | each hasUnacceptedEdits ifTrue: [each accept]].
	self hasUnacceptedEdits 
		ifTrue: [self basicAccept].
