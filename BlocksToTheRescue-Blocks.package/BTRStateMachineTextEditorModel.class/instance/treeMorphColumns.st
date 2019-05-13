views
treeMorphColumns

	^ {[:listMorph | (listMorph filteredItems collect: [:item |
			item preferredWidthOfColumn: 1]) max].
		[:listMorph | (listMorph filteredItems collect: [:item |
			item preferredWidthOfColumn: 2]) max].
		nil "take all the space"}