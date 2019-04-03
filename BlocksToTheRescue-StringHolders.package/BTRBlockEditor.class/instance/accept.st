actions
accept

	self dependents do: [:each | each hasUnacceptedEdits ifTrue: [each accept]].
	self content install.
	self contentsChanged.
	self hasUnacceptedEdits: false.
	self model changed: #annotation.