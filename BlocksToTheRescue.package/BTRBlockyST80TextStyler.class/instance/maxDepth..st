identifier-analysis
maxDepth: ranges

	| depth |
	depth := 0.
	^ (ranges collect: [ :range |
		depth := depth + (self depthChangeForIdentifier: range type)])
		max