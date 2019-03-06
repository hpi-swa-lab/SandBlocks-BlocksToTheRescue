as yet unclassified
getSourceFor: aSelector in: aClass

	self assert: aSelector = self selector.
	^ self selector,'
	
	<',self class,'>
	^ ', self value storeString