as yet unclassified
open

	| morph blockStore top |
	morph := Morph new.
	morph color: Color seaFoam.
	blockStore := self new.
	top := 10.
	
	blockStore registeredBlockTypes do: [:each | | block |
		block := (blockStore perform: each).
		morph addMorph: block .
		block top: top.
		top := block bottom + 10].
	
	morph height: top.
	morph openInHand 
