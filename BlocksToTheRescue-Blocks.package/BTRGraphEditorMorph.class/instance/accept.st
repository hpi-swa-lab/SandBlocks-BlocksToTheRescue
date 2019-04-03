accessing
accept

	self nodeViews values do: [:each | each hasUnacceptedEdits ifTrue: [each accept]].