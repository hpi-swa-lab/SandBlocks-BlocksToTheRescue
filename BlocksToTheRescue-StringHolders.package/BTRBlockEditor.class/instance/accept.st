actions
accept

	self dependents do: [:each | each hasUnacceptedEdits ifTrue: [each accept]].
	"If the unaccepted edits have not been resolved by any dependents"
	self hasUnacceptedEdits ifTrue: [self basicAccept].
