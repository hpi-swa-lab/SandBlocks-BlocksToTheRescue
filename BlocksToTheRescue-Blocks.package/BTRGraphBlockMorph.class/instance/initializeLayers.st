as yet unclassified
initializeLayers

	| depths  |
	depths := Dictionary new.
	self graph startNodes do: [:each | depths at: each put: 1].
	self graph edges do: [:each | depths at: each value put: ((depths at: each value ifAbsent: [0]) max: (depths at: each key) + 1)].
	self layers: (depths keys groupBy: [:each | depths at: each]).
	self extent: self minimumExtent.