as yet unclassified
createWindowSpec: aToolBuilder

	^ aToolBuilder pluggableWindowSpec new
		model: self;
		closeAction: #close;
		label: 'Puzzle-Debugger';
		extent: 300 @ 100;
		minimumExtent: 200 @ 66;
		children: OrderedCollection new;
		yourself.