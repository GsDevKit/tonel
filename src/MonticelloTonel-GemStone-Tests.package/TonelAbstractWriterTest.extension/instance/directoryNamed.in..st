*monticellotonel-gemstone-tests
directoryNamed: directoryName in: dir
  | fileUtils filePath |
  fileUtils := self fileUtils.
  ^ fileUtils directoryFromPath: directoryName relativeTo: dir