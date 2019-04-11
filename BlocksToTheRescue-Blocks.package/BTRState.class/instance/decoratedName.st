printing
decoratedName

	| decoName |
	decoName := WriteStream on: ''.
	decoName nextPutAll: self name.
	self decorations ifNotEmpty: [:infos |
		decoName nextPutAll: #' ('.
		infos
			do: [:info | decoName nextPutAll: info]
			separatedBy: [decoName nextPutAll: #', '].
		decoName nextPut: $) ].
	^ decoName contents