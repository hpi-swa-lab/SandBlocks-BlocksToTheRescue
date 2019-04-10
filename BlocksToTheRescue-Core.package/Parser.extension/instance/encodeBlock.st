*BlocksToTheRescue-Core
encodeBlock

	| btrBlockModel btrBlockNode |
	btrBlockModel := self advance.
	btrBlockModel flushCache.
	btrBlockNode := encoder encodeBlock: btrBlockModel.
	btrBlockNode generateSelectorWith: encoder.
	encoder
		noteSourceRange: (prevMark + requestorOffset to: self endOfLastToken)
		forNode: btrBlockNode.
	^ btrBlockNode