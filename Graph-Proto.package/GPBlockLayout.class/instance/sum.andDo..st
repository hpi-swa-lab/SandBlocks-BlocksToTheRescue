as yet unclassified
sum: aCollection andDo: aBlock

	| sum col |
	sum := 0.
	col := OrderedCollection new.
	(aCollection add: 0 beforeIndex: 1; yourself) do: [:each  |
		sum := sum + each.
		aBlock value: col value: sum].
	
	^ col