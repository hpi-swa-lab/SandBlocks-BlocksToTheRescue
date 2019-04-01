accessing
parameterNames

	^ parameterNames ifNil: [parameterNames := (1 to: self selector keywords size) collect: [:each | (Character alphabet at: each) asString]]