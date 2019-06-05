*BlocksToTheRescue-Core
storeDataOn: aReferenceStream

	"This method was earlier overwritten in order to write the owner as weak on the ReferenceStream.
	Since the introduction of weakInstVarNames, this is no longer necessary, so just call super."
	^ super storeDataOn: aReferenceStream