private definitions
typeClassDefinitionOf: aClassDefinition
	| definition |
	
	definition := self class orderedDictionaryClass new 
		at: #name put: aClassDefinition className asSymbol; 
		at: #superclass put: aClassDefinition superclassName asSymbol;
		yourself.

	aClassDefinition type = #normal ifFalse: [ 
		definition at: #type put: aClassDefinition type ].
	
	aClassDefinition hasTraitComposition ifTrue: [ 
		definition at: #traits put: aClassDefinition traitCompositionString ].
	
	aClassDefinition hasClassTraitComposition ifTrue: [ 
		definition at: #classTraits put: aClassDefinition classTraitCompositionString ].
	
	(aClassDefinition instVarNames)
		ifNotEmpty: [ :vars | definition at: #instVars put: vars asArray ].

	(aClassDefinition classVarNames)
		ifNotEmpty: [ :vars | definition at: #classVars put: vars asArray ].
		
	((aClassDefinition poolDictionaries) collect: [:each | each asString])
		ifNotEmpty: [ :vars | definition at: #pools put: vars asArray ].
		
	(aClassDefinition classInstVarNames)
		ifNotEmpty: [ :vars | definition at: #classInstVars put: vars asArray ].

	definition 		
		at: #category put: aClassDefinition category asSymbol.
	
	^ self toSTON: definition