block methods
ensureBlockMethodIfCanceled: aBlock

	| blockModel |
	blockModel := self method.
	blockModel isBTRBlockModel
		ifFalse: [blockModel := self askForBlockModel].
	blockModel ifNil: [^ aBlock value].
	blockModel install.