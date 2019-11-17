as yet unclassified
model: aProject

	model := aProject.
		
	aScalableImageMorph image: model thumbnail. 
	
	model addDependent: self
