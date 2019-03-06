as yet unclassified
example3

	"Install the editor first!"
	Workspace new
		contents: (Text withAll: '(ImageMorph new newForm: '), (Text string: (String value: 1) attribute: (TextAnchor new anchoredMorph: BTRImageMorph new)) , (Text withAll: ') openInHand');
		openLabel: 'Text with Form'.

