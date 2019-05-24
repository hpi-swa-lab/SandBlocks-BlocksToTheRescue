*BlocksToTheRescue-Core
encodeBlock

	| btrBlockModel btrBlockNode |
	"Scanner may return nil if he got an SOH without a BlockModel which will result a Parser error but NOT in a Scanner error (due to compliance with handling of other special characters like ! or Character value: 2)"
	here ifNil: [^ self expected: 'BlockModel'].

	btrBlockModel := self advance.
	btrBlockModel compiledIn: cue getClass.
	btrBlockModel flushCache.
	btrBlockNode := encoder encodeBlock: btrBlockModel.
	btrBlockNode generateSelectorWith: encoder.
	encoder
		noteSourceRange: (prevMark + requestorOffset to: self endOfLastToken)
		forNode: btrBlockNode.
	^ btrBlockNode