block methods
ensureBlockMethodIfCanceled: aBlock

	| blockMethod |
	blockMethod := self tryConvertToBlockMethod: self method.
	blockMethod ifNil: [^ aBlock value].
	blockMethod install.