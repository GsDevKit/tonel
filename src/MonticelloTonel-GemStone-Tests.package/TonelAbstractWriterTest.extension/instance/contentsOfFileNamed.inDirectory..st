*monticellotonel-gemstone-tests
contentsOfFileNamed: fileName inDirectory: dir
  self fileUtils
    readStreamFor: fileName
    in: dir
    do: [ :stream | ^ stream contents ]