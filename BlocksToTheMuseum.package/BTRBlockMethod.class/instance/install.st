initialize-release
install

	self blockModel flushCache.
	self methodClass compile: (self getSourceCopied: false).