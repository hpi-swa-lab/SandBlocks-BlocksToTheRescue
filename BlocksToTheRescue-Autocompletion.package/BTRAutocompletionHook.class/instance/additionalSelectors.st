as yet unclassified
additionalSelectors

	^ (TBTRBlockModel users gather: [:each | each withAllSubclasses]) 
		collect: [:each |
			BTRBlockEntry
				contents: each
				type: #selector]