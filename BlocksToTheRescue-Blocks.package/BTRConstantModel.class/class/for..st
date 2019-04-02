instance creation
for: anObject
	
	|class|
	class := self allSubclasses 
		detect: [:each | each worksForObject: anObject]
		ifNone: [self].
		
	^ class new
		value: anObject;
		yourself