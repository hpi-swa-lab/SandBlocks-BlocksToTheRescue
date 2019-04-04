playing
shutDownAll
	self soundRequesters do: [:aRequester | self shutDownSoundsRequestedFrom: aRequester].
