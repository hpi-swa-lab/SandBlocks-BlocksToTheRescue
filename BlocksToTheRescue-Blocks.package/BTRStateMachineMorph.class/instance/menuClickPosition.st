menu
menuClickPosition

	^ self valueOfProperty: #contextMenuPosition ifAbsent: [ActiveHand position]