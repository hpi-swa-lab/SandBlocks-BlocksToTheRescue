as yet unclassified
createWindowSpec: aToolBuilder

	^ aToolBuilder pluggableWindowSpec new
		model: self;
		label: 'Puzzle-Debugger';
		extent: 300 @ 100;
		children: OrderedCollection new;
		yourself.