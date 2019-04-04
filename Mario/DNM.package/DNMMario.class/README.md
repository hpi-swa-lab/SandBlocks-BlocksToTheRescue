A DNMMario is a special DNMMovingGameElement. It has the further attributes health and score, which describe the current health and current score of the player. They are ValueModels so that DNMUI can observe them to give the user a visual feedback of its players health and score. 
Mario will try to pickUp other GameElements if he collides with them.

Instance Variables
	health:		<ValueHolder>
	score:		<ValueHolder>

health
	- The players current health.

score
	- The players current score.