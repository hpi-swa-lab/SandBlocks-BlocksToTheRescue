*BlocksToTheRescue-Core
filterAttributes: selectBlock from: start to: stop 
	"Filter the attribute over the interval start to stop."
	runs :=  runs copyReplaceFrom: start to: stop
			with: ((runs copyFrom: start to: stop)
				mapValues:
				[:attributes | attributes select: selectBlock])