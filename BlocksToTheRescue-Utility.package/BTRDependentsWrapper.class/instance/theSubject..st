accessing
theSubject: anObject

	"Only wrap a copy of the Object without its dependents.  Necessary to prevent an infinite amount of wrappers which are created when theObject is stored again, which will try to again return a DependentsWrapper."
	theSubject := anObject shallowCopy.
	self storedDependents: (OrderedCollection new: anObject dependents size).
	self storedDependents addAll: anObject dependents.