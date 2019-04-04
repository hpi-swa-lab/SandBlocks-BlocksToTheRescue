A DNMSound is an Object which manages and plays sounds.
It's responsible for playing sounds on request. Other objects can request that a sound is played via #play:for:. It accepts a symbol, which stands for the requested sound, as a parameter. There has to be an entry in soundsBySymbol for it to play it. In order to stop a requested sound from playing, use #shutDownSoundsRequestedFrom:.
In case an object has not shut down its requested sounds (and they have a long or endless duration), all sounds can be stopped from playing using #shutDownAll.
Sounds will be loaded from disk into soundsBySymbol by the #install method.

Instance Variables
	soundsByRequester:		<Dictionary>
	soundsBySymbol:		<Dictionary>

soundsByRequester
	- Stores who requested which sounds. Implemented as a dictionary mapping objects(requesters) to collections of sounds. 

soundsBySymbol
	- Stores the sound object for each symbolic sound. Implemented as a dictionary mapping symbol to sound.

