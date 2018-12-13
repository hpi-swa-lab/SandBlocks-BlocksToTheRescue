event handling
mouseUp: evt

	self dragLine abandon.
	self handle abandon.
	
	GPPort allInstances 
		detect: [:each | each containsPoint: evt position]
		ifFound: [:port | port getDrop: self]
		ifNone: [].
	
	"evt hand inspect"