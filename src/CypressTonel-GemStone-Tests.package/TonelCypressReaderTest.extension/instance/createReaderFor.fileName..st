*cypresstonel-gemstone-tests
createReaderFor: snapshot fileName: fileName
  | dir |
  dir := self newFileDirectorySnapshot: snapshot.
  ^ TonelCypressReader on: dir pathString fileName: fileName