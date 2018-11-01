initialize-release
setTargetFrame: aGameFrame

	self previous target: aGameFrame.
	self next target: aGameFrame.
	self reload target: aGameFrame.
	aGameFrame buttonBar: self.