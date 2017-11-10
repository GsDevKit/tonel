tests
testLoadDefinitions
  | snapshot reader |
  snapshot := self mockSnapshot.
  reader := self createReaderFor: snapshot fileName: 'MonticelloMocks'.
  reader loadDefinitions.
  self assert: reader definitions size equals: snapshot definitions size.
  reader definitions sorted
    with: snapshot definitions sorted
    do: [ :a :b | self assertDefinition: a and: b ]