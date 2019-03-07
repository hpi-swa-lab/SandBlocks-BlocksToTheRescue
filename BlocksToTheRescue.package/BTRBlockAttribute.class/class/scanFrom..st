fileIn/Out
scanFrom: aStream

	| className class |
	className := aStream upTo: $;.
	class := self environment at: className asSymbol.
	class ifNotNil: [
		^ self new 
			anchoredBlock: class new;
			yourself].
	^ self new