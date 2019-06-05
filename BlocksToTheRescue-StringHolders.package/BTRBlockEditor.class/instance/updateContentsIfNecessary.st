updating
updateContentsIfNecessary

	(self model method ~= self blockMethod and: [self hasUnacceptedEdits not]) 
		ifTrue: [self contentsChanged]