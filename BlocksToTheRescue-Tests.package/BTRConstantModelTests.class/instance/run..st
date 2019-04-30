as yet unclassified
run: aResult

	(self shouldRunForAllClasses: self selector)
		ifTrue: 
			[self classesToTest do: [:each | 
				| caseToRun |
				caseToRun := self veryDeepCopy.
				caseToRun classTested: each.
				aResult runCase: caseToRun]]
		ifFalse: [super run: aResult].