as yet unclassified
args

	^ ((self patches select: [:each | each type = #block])
					collect: [:each | each value]) asArray