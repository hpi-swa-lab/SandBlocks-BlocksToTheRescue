as yet unclassified
accept

	^ (self dependents, self submorphs) asSet 
		do: [:each | each hasUnacceptedEdits ifTrue: [each accept]].