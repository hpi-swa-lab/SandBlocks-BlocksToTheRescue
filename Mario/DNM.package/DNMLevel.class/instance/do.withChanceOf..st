utility
do: aBlock withChanceOf: aPercentage
	"aPercentage has to be between 0 and 100. Returns #notEvaluated, if the block is not evaluated, otherwise its return value."
	(100 atRandom < aPercentage) 
		ifTrue:  [^aBlock value]
		ifFalse: [^#notEvaluated].