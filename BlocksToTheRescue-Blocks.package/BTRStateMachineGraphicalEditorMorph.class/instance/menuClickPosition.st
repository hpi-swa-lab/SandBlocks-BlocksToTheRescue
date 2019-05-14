menu
menuClickPosition

	^ self valueOfProperty: #contextMenuPosition ifAbsent: [self position + self gridGaps]