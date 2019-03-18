*BlocksToTheRescue-Core
validateMessageSource: sourceString forSelector: aSelector inClass: theClass
	"Check whether there is evidence that method source is invalid"

	(theClass newParser parseSelector: sourceString) = aSelector
		ifFalse: [self informPossiblyCorruptSource].