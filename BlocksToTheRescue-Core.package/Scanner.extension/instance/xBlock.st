*BlocksToTheRescue-Core
xBlock

	token := self readBlock.
	tokenType := #block.
	token scannedWith: self.
	self step.