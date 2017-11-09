tests
testTypeDef
  self
    assertParse:
      '
"
this is a test
"
Class { 
	#name: ''X'',
	#superclass: ''Y'',
	#category: ''Z'' 
}'
    rule: #'typeDef'
    equals:
      (self
        newClassDefinitionForClassNamed: 'X'
        superclassName: 'Y'
        category: 'Z'
        instVarNames: #()
        classVarNames: #()
        poolDictionaryNames: #()
        classInstVarNames: #()
        type: #'normal'
        comment: 'this is a test')