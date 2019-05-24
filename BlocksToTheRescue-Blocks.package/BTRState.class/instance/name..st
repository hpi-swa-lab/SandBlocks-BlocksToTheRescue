accessing
name: aSymbol
	name := aSymbol.
	self transitions do: [:each | each sourceStateName: self name].
	self changed: #name.