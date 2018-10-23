as yet unclassified
clearBlocks

	(self submorphs select: [:each | each isKindOf: TBlockView])
		do: [:each | each abandon]