as yet unclassified
createWindowSpec: aToolBuilder

	^ aToolBuilder pluggableWindowSpec new
		model: self;
		closeAction: #close;
		label: 'Puzzle-Debugger';
		extent: 300 @ 100;
		children: OrderedCollection new;
		yourself.