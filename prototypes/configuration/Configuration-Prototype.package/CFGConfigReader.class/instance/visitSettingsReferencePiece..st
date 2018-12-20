visiting
visitSettingsReferencePiece: aCFGSettingReference

	^ (self class newFor: self configuration) 
		plainSettingForOptions: (Compiler evaluate: '{', aCFGSettingReference code, '}').