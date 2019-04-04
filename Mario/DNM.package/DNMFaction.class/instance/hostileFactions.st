accessing
hostileFactions
	hostileFactions ifNil: [hostileFactions := Set new].
	^hostileFactions