copying
copy

	^ self shallowCopy
		anchoredBlock: self anchoredBlock copy;
		yourself