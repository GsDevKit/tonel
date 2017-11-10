*monticellotonel-gemstone-tests
createReaderFor: snapshot fileName: fileName
  | dir |
  dir := self newFileDirectorySnapshot: snapshot.
  ^ TonelMCReader on: dir fileName: fileName.
