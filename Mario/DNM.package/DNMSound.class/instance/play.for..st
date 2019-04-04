playing
play: aSoundSymbol for: aRequester
	"Plays the sound if there is one. Use #noSound if you don't want to play a sound."
	|sound|
	(aSoundSymbol = #noSound) ifTrue: [^self].
	sound := (self soundWithSymbol: aSoundSymbol) copy.
	self add: sound forRequester: aRequester.
	sound play.
