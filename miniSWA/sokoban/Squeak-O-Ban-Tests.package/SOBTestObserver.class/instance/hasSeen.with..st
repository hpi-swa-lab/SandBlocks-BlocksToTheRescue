as yet unclassified
hasSeen: anAspect with: aValue

	^ (self seen at: anAspect ifAbsent: [^ false]) = aValue.