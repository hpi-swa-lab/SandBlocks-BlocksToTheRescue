testing
orientation
	"the direction the object is looking, default is right"
	self isMovingLeft ifTrue: [^#left] ifFalse: [^#right].