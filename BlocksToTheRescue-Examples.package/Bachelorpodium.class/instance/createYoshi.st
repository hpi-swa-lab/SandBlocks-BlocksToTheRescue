yoshi
createYoshi

	^ yoshi := Yoshi new
		image: (ImageReadWriter formFromFileNamed: 'yoshi.png');
		color: (Color r: 200/255 g: 0  b: 10/255).