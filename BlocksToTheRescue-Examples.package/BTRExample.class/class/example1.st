as yet unclassified
example1
	Workspace new
		contents:
			(Text withAll: '^ '),
			(Text string: (String value: 1) attributes: {(BTRBlockAttribute new blockModel: (BTRConstantModel for: Morph new))}),
			(Text withAll: ' extent: (500 random) @ (500 random).');
		openLabel: 'Text with Morph'