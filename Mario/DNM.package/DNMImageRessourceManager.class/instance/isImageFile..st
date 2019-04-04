utility
isImageFile: aFilename
	^aFilename endsWithAnyOf: {'.png' . '.jpg'}