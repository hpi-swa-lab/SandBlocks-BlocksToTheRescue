*BlocksToTheRescue-Core
add: aString target: anObject selector: aSymbol icon: aForm
	"Append a menu item with the given label. If the item is selected, it will send the given selector to the target object."
	
	| item |
	item := MenuItemMorph new
		contents: aString;
		target: anObject;
		selector: aSymbol;
		arguments: Array empty;
		icon: aForm.
	^ self addMorphBack: item.