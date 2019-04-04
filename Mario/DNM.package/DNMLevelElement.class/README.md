A DNMLevelElement is a data class (like a struct) which describes one specific game elment. Those are characterized by a position where they are in the level (a point) and there type. 
To get the corresponding GameElement, use #asMorph.
It also implements an interface, that allows you to get information about the boundaries of its future GameElement.