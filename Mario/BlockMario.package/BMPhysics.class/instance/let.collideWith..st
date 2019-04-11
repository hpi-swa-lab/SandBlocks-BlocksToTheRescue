simulation
let: aBMGameObject collideWith: aCollection 
	
	self maxCollisionNumberAtSameTime
		timesRepeat: [| nearestObject | aCollection
				ifNotEmpty: [nearestObject := self nearestObjectFrom: aCollection to: aBMGameObject.
					aCollection remove: nearestObject.
					self tryToApplyCollisionOf: aBMGameObject and: nearestObject]]