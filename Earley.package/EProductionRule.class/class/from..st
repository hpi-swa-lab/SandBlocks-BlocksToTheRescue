as yet unclassified
from: anArray

	^ self new 
		in: [:productionRule | productionRule symbols: (anArray collect: [:each | productionRule buildSymbolFor: each])]
		yourself

	