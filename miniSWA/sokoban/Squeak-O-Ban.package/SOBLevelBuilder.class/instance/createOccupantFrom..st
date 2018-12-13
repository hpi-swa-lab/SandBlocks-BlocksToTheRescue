building
createOccupantFrom: aCharacter

	| occupant |
	occupant := SOBOccupant from: aCharacter.
	occupant isPlayer ifTrue: [self level player: occupant].
	occupant isBox ifTrue: [self level unstoreBox].
	self level occupy: self currentPosition by: occupant.
	occupant moveTo: self currentPosition.