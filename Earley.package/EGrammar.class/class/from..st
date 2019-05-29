as yet unclassified
from: aCollection

	| grammar |
	grammar := self new.
	aCollection do: [:each | "{name<symbol> rule<array> semanticAction<block>}"
		grammar addRule: ((EProductionRule from: each second) 
									name: each first;
									semanticAction: each third; 
									yourself)].
	^ grammar