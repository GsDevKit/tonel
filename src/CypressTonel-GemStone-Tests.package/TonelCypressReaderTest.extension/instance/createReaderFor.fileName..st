*cypresstonel-gemstone-tests
createReaderFor: snapshot fileName: packageName
  | dir |
  dir := self newFileDirectorySnapshot: snapshot fileName: packageName.
  ^ TonelCypressReader on: dir fileName: packageName