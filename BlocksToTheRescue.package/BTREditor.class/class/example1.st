as yet unclassified
example1

	"Install the editor first!"
	Workspace new
		contents: (Text withAll: 'Transcript showln:') , (Text string: '*' attribute: (TextAnchor new anchoredMorph: Morph new)) , (Text withAll: 'extent: (500 random) @ (500 random).');
		openLabel: 'Text with Form'.
