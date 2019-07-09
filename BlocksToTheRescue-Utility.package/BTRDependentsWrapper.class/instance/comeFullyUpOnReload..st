accessing
comeFullyUpOnReload: aReferenceStream

	"self halt."
	self storedDependents do: [:each|
		self theObject addDependent: each].

	^ self theObject