accessing
comeFullyUpOnReload: aDataStream

	self storedDependents do: [:each|
		self theSubject addDependent: each].

	^ self theSubject