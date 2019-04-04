playing
shutDownSoundsRequestedFrom: aRequester
	(soundsByRequester includesKey: aRequester) 
		ifTrue: [(soundsByRequester at: aRequester) do: [:aSound | aSound pause]].
	soundsByRequester removeKey: aRequester ifAbsent: [].
	