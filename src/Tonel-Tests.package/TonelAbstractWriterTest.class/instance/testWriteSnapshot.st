tests
testWriteSnapshot
  | writer dir nl packageDir snapshot |
  dir := self directory.
  writer := self writerClass on: dir.
  snapshot := self mockSnapshot.
  snapshot dynamicInstVarAt: #'packageName' put: 'MonticelloMocks'.
  writer writeSnapshot: snapshot.
  self assert: (self directoryNamed: 'MonticelloMocks' existsIn: dir).
  packageDir := self directoryNamed: 'MonticelloMocks' in: dir.
  self
    assert: (self fileNamesIn: packageDir)
    equals:
      #('MCMockASubclass.class.st' 'MCMockClassA.class.st' 'MCMockClassB.class.st' 'MCMockClassD.class.st' 'MCMockClassE.class.st' 'MCMockClassF.class.st' 'MCMockClassG.class.st' 'MCMockClassH.class.st' 'MCMockClassI.class.st' 'MCSnapshotTest.extension.st' 'package.st').
  nl := TonelWriter lineEnding.
  self
    assert:
      (self contentsOfFileNamed: 'MCMockClassA.class.st' inDirectory: packageDir)
    equals: (self expectedMCMockClassAClassSt withLineEndings: nl).
  self
    assert:
      (self contentsOfFileNamed: 'MCMockASubclass.class.st' inDirectory: packageDir)
    equals: (self expectedMCMockASubclassClassSt withLineEndings: nl).
  self
    assert:
      (self contentsOfFileNamed: 'MCSnapshotTest.extension.st' inDirectory: packageDir)
    equals: (self expectedMCSnapshotTestExtensionSt withLineEndings: nl)