block methods
ensureBlockMethodIfCanceled: aBlock

	self tryConvertToBlockMethod: self method.
	self method isBTRBlockMethod
		ifFalse: [^ aBlock value].