accessing
position

	^ self entity
		ifNil: [0@0]
		ifNotNil: [:e | e position]