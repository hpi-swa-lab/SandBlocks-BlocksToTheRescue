as yet unclassified
initialize 

	self shotSound: (SampledSound fromWaveStream: ((MultiByteBinaryOrTextStream with: (self shotSoundBinary)) binary; reset; yourself)).
	self deathEnemySound: (SampledSound fromWaveStream: ((MultiByteBinaryOrTextStream with: (self deathEnemySoundBinary)) binary; reset; yourself)).
	self deathSound: (SampledSound fromWaveStream: ((MultiByteBinaryOrTextStream with: (self deathSoundBinary)) binary; reset; yourself)).
	
	self playerSprite: ((Form fromBinaryStream: ((MultiByteBinaryOrTextStream with: (self playerSpriteBinary)) binary; reset; yourself)) scaledToSize: 40 @ 80).
	self particleSprite: ((Form fromBinaryStream: ((MultiByteBinaryOrTextStream with: (self particleSpriteBinary)) binary; reset; yourself)) scaledToSize: 5 @ 30).
	self enemySprite: ((Form fromBinaryStream: ((MultiByteBinaryOrTextStream with: (self enemySpriteBinary)) binary; reset; yourself)) scaledToSize: 50 @ 50).
	
	