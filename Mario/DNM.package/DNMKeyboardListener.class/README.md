A DNMKeyboardListener stores the currently pressed keys. It has to be updated regulary by forwarding the value of any newly pressed/released key using #keyDown: and #keyUp:.

Instance Variables
	keycodeConverter:		<DNMKeycodeConverter>
	pressedKeyValues:		<Set>

keycodeConverter
	- Converts keyValues to symbols and back again. 

pressedKeyValues
	- A set containing all currently pressed keys.
