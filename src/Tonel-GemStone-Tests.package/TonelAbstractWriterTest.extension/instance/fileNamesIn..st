*tonel-gemstone-tests
fileNamesIn: dir
  | fileUtils filePath |
  fileUtils := self fileUtils.
  ^ fileUtils entryNamesFrom: dir