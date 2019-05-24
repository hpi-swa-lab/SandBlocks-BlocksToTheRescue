accessing
renameState: oldName to: newName

	| state |
	(self hasStateNamed: newName)
		ifTrue: [^ self error: 'State named ''', newName, ''' already exists'].
		
	"order is important"
	state := self states at: oldName.
	self states at: newName put: state.
	self states do: [:each | each renameTransitionsTargeting: oldName to: newName].
	self states removeKey: oldName.
	state name: newName.
	
	self changed.