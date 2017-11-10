*monticellotonel-gemstone-tests
directoryNamed: directoryName existsIn: dir
  | fileUtils filePath |
  fileUtils := self fileUtils.
  filePath := fileUtils directoryFromPath: directoryName relativeTo: dir.
  ^ fileUtils directoryExists: filePath