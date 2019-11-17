instance creation
open

	| aProject aProjectMorph |
	
	aProject := Project new.
	aProjectMorph := ProjectMorph new.
	aProjectMorph model: aProject.
	
	^(aProjectMorph embeddedInMorphicWindowLabeled: 'Unnamed') openInWorld extent:300@200
