as yet unclassified
matchesAlphaNumeric: aString

	| machine |
	machine := self alphaNumericStringMatcher start.
	aString do: [:character |
		machine transition: character asString].
	^ machine isInStateNamed: #valid