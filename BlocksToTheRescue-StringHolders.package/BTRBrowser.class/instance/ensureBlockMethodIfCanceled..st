block methods
ensureBlockMethodIfCanceled: aBlock

	| blockModel |
	blockModel := self tryConvertToBlockModel: self method.
	blockModel ifNil: [^ aBlock value].
	blockModel install.