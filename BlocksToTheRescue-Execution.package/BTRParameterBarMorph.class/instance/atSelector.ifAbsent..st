accessing
atSelector: aSymbol ifAbsent: aBlock

	^ (self submorphs at: (self selectors indexOf: aSymbol ifAbsent: aBlock) * 2) contents