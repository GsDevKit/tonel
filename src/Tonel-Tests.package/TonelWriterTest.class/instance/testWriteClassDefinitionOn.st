tests
testWriteClassDefinitionOn
  | writer def stream |
  writer := TonelWriter new.
  stream := TonelParser writeStreamClass on: String new.
  def := self creatClassDefinition: #'SomeObject'
    superclassName: #'Object'
    category: #'Kernel'
    instVarNames: #()
    classVarNames: #()
    poolDictionaryNames: #()
    classInstVarNames: #()
    type: #'normal'
    comment: 'comment test'.
  writer writeClassDefinition: def on: stream.
  self
    assert: stream contents
    equals:
      ('"
comment test
"
Class {
	#name : #SomeObject,
	#superclass : #Object,
	#category : #Kernel
}
'
        withLineEndings: TonelWriter lineEnding).
  stream := String new writeStream.
  def := self creatClassDefinition: #'SomeObject'
    superclassName: #'Object'
    category: #'Kernel'
    instVarNames: #(#'a' #'b' #'c')
    classVarNames: #(#'D' #'E')
    poolDictionaryNames: #(#'POOL')
    classInstVarNames: #(#'instVarA')
    type: #'normal'
    comment: 'comment test'.
  writer writeClassDefinition: def on: stream.
  self
    assert: stream contents
    equals:
      ('"
comment test
"
Class {
	#name : #SomeObject,
	#superclass : #Object,
	#instVars : [
		''a'',
		''b'',
		''c''
	],
	#classVars : [
		''D'',
		''E''
	],
	#pools : [
		''POOL''
	],
	#classInstVars : [
		''instVarA''
	],
	#category : #Kernel
}
'
        withLineEndings: TonelWriter lineEnding)