accessing-private
register: entity on: gameField

	self entityMorphMap add: entity -> (self buildMorphOf: entity on: gameField).