as yet unclassified
example2

	"Install the editor first!"
	Workspace new
		contents: (Text string: (String value: 1) attribute: (BTRBlockAttribute new anchoredMorph: Morph new)) , (Text withAll: ' color: '), (Text string: (String value: 1) attribute: (BTRBlockAttribute new anchoredMorph: BTRColorMorph new));
		openLabel: 'Text with Form'.
