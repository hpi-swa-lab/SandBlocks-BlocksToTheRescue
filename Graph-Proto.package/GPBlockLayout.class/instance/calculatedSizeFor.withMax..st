as yet unclassified
calculatedSizeFor: anOrderedCollection withMax: aNumber

	| sum autoCount toChange calculatedSizes |
	sum := 0.
	autoCount := 0.
	toChange := OrderedCollection new.
	calculatedSizes := OrderedCollection new.
	anOrderedCollection withIndexDo: [:each :index | each isNumber 
															ifTrue: [sum := sum + each . calculatedSizes add: each]
															ifFalse: [toChange add: index . autoCount := autoCount + 1 . calculatedSizes add: each]].
	toChange do: [:each | calculatedSizes 
							at: each 
							put: ((aNumber - sum) max: 0) / autoCount].
	^ calculatedSizes 