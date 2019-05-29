as yet unclassified
from: aCollection

	| grammar |
	grammar := self new.
	aCollection do: [:each | "{name<symbol> rule<array> semanticAction<block>}"
		grammar addRule: (grammar ruleFrom: each)].
	^ grammar