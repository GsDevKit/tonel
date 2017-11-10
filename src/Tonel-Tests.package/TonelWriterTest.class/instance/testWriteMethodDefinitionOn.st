tests
testWriteMethodDefinitionOn
  | writer def stream |
  writer := TonelWriter new.
  stream := String new writeStream.
  def := self creatMethodDefinition: #'Object'
    classIsMeta: false
    selector: #'selector'
    category: 'accessing'
    source:
      'selector
	^ 42'.
  writer writeMethodDefinition: def on: stream.
  self
    assert: stream contents
    equals:
      ('
{ #category : #accessing }
Object >> selector [
	^ 42
]
'
        withLineEndings: TonelWriter lineEnding).
  stream := String new writeStream.
  def := self creatMethodDefinition: #'Object'
    classIsMeta: true
    selector: #'selector'
    category: 'accessing'
    source:
      'selector
	^ 42'.
  writer writeMethodDefinition: def on: stream.
  self
    assert: stream contents
    equals:
      ('
{ #category : #accessing }
Object class >> selector [
	^ 42
]
'
        withLineEndings: TonelWriter lineEnding).
  stream := String new writeStream.
  def := self creatMethodDefinition: #'Object'
    classIsMeta: false
    selector: #'='
    category: 'comparing'
    source:
      '= anObject
	^ self == anObject'.
  writer writeMethodDefinition: def on: stream.
  self
    assert: stream contents
    equals:
      ('
{ #category : #comparing }
Object >> = anObject [
	^ self == anObject
]
'
        withLineEndings: TonelWriter lineEnding)