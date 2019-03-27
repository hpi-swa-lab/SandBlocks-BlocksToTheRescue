block methods
convertToBlockModel: aCompiledMethod

	|string blockModel |
	blockModel := nil.
	string := aCompiledMethod getSourceFor: aCompiledMethod selector in: aCompiledMethod methodClass.
	string asText attributesAt: string size do: [:textAttribute |
		blockModel := blockModel ifNil: [textAttribute blockModel]].
	blockModel ifNotNil: [
		blockModel
			methodClass: aCompiledMethod methodClass;
			selector: aCompiledMethod selector].
	^ blockModel