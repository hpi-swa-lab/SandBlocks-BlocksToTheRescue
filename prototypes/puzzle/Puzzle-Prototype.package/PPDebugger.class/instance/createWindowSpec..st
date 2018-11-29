as yet unclassified
createWindowSpec: aToolBuilder

	^ aToolBuilder pluggableWindowSpec new
		model: self;
		label: 'Puzzle-Debugger';
		children: OrderedCollection new;
		yourself.