construction
add: aString target: target selector: aSymbol argumentList: argList icon: anIcon
	"The MenuMorph does not have a method that allows adding MenuItemMorphs with icons. Thus we have to implement it."
	| item |
	item := MenuItemMorph new
		contents: aString;
		target: target;
		selector: aSymbol;
		arguments: argList asArray;
		icon: anIcon;
		yourself.
	self addMorphBack: item.