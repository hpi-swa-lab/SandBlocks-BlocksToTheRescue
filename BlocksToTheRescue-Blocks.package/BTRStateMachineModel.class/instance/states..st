accessing
states: aDictionary
	states := aDictionary.
	states do: [:each | each model: self].