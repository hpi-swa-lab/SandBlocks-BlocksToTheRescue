accessing
followingConnector: aMorph

	followingConnector := aMorph.
	
	"mt: Maybe encapsulate this operation? Make it idempotent even? #assureMorphPieces?"
	self followingConnector ifNotNil: [:m | self insertMorph: m].