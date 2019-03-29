drawing
transformationFrom: imageRectangle onTo: canvasRectangle

	self scaleMode = #fill ifTrue: [
		^ MatrixTransform2x3
			transformFromLocal: imageRectangle
			toGlobal: canvasRectangle].
	self scaleMode = #cover ifTrue: [
		^ MatrixTransform2x3
			transformFromLocal: imageRectangle
			toGlobal: (imageRectangle scaleCover: canvasRectangle origin: self origin)].
	self scaleMode = #contain ifTrue: [
		^ MatrixTransform2x3
			transformFromLocal: imageRectangle
			toGlobal: (imageRectangle scaleContain: canvasRectangle origin: self origin)].
	"self scaleMode = #none ifTrue:"
		^ MatrixTransform2x3 identity