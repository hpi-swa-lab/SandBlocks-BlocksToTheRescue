A DNMImageRessourceManager is the object that stores all image ressources. Using #install it will fetch the images from disk and store them as an ImageMorph or AnimatedImageMorph, depending on their filetype.
You can get a ressource by using #getRessource: which will grant you a copy of the stored morph. Apart from that, you should treat most methods as private.

Instance Variables
	filenamesBySymbol:		<Dictionary>
	ressourcesBySymbol:		<Dictionary>

filenamesBySymbol
	- Stores the filenames in which it can find a specific ressource.

ressourcesBySymbol
	- Stores the actual ressource (Morph).
