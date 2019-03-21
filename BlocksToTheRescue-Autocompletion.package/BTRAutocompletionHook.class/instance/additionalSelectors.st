as yet unclassified
additionalSelectors

	^ BTRBlockMorph allSubclasses collect: [:each |
		BTRBlockEntry
			contents: each
			type: #selector]