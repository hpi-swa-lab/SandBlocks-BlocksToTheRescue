visiting
visitSettingsReferencePiece: aCFGSettingReference

	^ self plainSettingForOptions: (Compiler evaluate: '{', aCFGSettingReference code, '}').