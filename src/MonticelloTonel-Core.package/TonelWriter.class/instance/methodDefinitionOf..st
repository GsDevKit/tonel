private definitions
methodDefinitionOf: aMethodDefinition
	^ self toSTON: (self class orderedDictionaryClass new 
		at: #category put: aMethodDefinition category; 
		yourself)	
	