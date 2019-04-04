collision attack protocoll
isInAttackDirection: aGameElement
	|directionsOfObject|
	directionsOfObject := self directionsOf: aGameElement.
	^directionsOfObject anySatisfy: [:aDirection |
			(self attackDirections includes: aDirection)]