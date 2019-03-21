running
setUp

	super setUp.
	self 
		morph: Morph new;
		textAttribute: (BTRBlockAttribute new anchoredBlock: self morph);
		text: (Text withAll: 'foo', (String value: 1),  'bar');
		scanner: self createScanner.
	self text addAttribute: self textAttribute from: 4 to: 4.
	self scanner text: self text textStyle: TextStyle default.