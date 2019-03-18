*IconsForMessages
classIconAt: anIndex

	^ self class classIconFor: (self classList at: anIndex ifAbsent: [^nil])