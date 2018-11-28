instance creation
from: aCharacter

	^ (aCharacter caseOf: {
		[$#] -> [SOBWallTile].
		[$.] -> [SOBStorageTile].
		[$*] -> [SOBStorageTile].
		[$+] -> [SOBStorageTile].
		[$@] -> [SOBTile].
		[$$] -> [SOBTile].
		[$ ] -> [SOBTile].
	}) new