*BlocksToTheRescue-Core
xBlock

	token := self readBlock.
	tokenType := #block.
	token ifNotNil: [token scannedWith: self].
	self step.