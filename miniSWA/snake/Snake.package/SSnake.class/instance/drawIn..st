as yet unclassified
drawIn: aSWorld 

	self segments do: [:each | each drawIn: aSWorld]. 
	self head drawIn: aSWorld.