drawing
drawOn: aCanvas
	"Draw the border after the image."
	
	| style aForm |
	
	aForm := Form extent: self extent depth: Display depth.
	
	image displayScaledOn: aForm.
	
	aCanvas drawImage: aForm at: self innerBounds origin.
	
	(style := self borderStyle) ifNotNil: [style frameRectangle: bounds on: aCanvas]