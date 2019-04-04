installation
reset
	"stops all sound before deleting the reference to UniqueInstance, otherwise the sound might continue to play."
	UniqueInstance ifNotNil: [UniqueInstance shutDownAll].
	UniqueInstance := nil.