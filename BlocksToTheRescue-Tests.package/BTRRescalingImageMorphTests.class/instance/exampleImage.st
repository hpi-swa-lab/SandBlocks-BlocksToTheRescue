test-data
exampleImage

	| canvas colors |
	colors := #(black white blue
					green orange red
					magenta cyan yellow).
	canvas := FormCanvas extent: 3@3.
	(colors collect: [ :symbol | Color perform: symbol])
		doWithIndex: [ :color :i |
			canvas
				point: (i asPointIn: canvas extent) - 1
				color: color].
	^ canvas form