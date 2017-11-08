tests
testTypeDefWithClassVars
	self 
		assertParse: '
"
this is a test
"
Class {
	#name : #MCMockASubclass,
	#superclass : #MCMockClassA,
	#instVars : [
		''x''
	],
	#classVars : [
		''Y''
	],
	#category : #MonticelloMocks
}
'
		rule: #typeDef
		equals: (MCClassDefinition
        name: 'MCMockASubclass'
        superclassName: 'MCMockClassA'
        traitComposition: '{}'
        classTraitComposition: '{}'
        category: 'MonticelloMocks'
        instVarNames: #( x)
        classVarNames: #(Y)
        poolDictionaryNames: #()
        classInstVarNames: #()
        type: #normal
        comment: 'this is a test'
        commentStamp: nil)