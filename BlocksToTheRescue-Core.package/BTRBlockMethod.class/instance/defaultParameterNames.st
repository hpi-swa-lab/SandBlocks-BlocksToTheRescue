accessing
defaultParameterNames

	^ self selector keywords collectWithIndex: [:each :index | (Character alphabet at: index) asString]