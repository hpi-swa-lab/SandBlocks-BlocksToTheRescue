*IconsForMessages
messageIconAt: anIndex

	^ self class
			messageIconFor: (self messageList at: anIndex ifAbsent: [^nil])
			in: self selectedClassOrMetaClass