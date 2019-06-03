accessing
comeFullyUpOnReload: aReferenceStream

	self theObject myDependents: self storedDependents.
	"We canot simply return theObject here because the SmartRefStream does not handle multiple depencies to such an Object correctly.
	The other references to this object would then still point to this wrapper and not theObject."
	self becomeForward: self theObject.