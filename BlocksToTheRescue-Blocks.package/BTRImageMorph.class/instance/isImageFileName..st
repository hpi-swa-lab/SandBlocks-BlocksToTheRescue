event handling
isImageFileName: aString

	^ ImageReadWriter allTypicalFileExtensions 
		anySatisfy: [:ending | aString endsWith: ending]