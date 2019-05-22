accessing
renameState: oldName to: newName

	(self hasStateNamed: newName)
		ifTrue: [^ self error: 'State named ''', newName, ''' already exists'].
	(self states removeKey: oldName)
		name: newName;
		in: [:state | self states at: newName put: state].
	self states do: [:each | each renameTransitionsTargeting: oldName to: newName].
	self changed.