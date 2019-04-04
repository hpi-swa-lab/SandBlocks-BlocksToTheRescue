private
add: aSound forRequester: aRequester
	soundsByRequester at: aRequester ifAbsent: [soundsByRequester add: (aRequester -> OrderedCollection new)].
	(soundsByRequester at: aRequester) add: aSound. 
