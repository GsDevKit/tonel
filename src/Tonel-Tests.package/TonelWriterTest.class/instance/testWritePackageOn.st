tests
testWritePackageOn
  | writer def stream |
  writer := TonelWriter new.
  stream := WriteStreamPortable on: String new.
  writer writePackage: 'ThePackage' on: stream.
  self
    assert: stream contents
    equals:
      ('Package { #name : #ThePackage }
'
).

  stream := WriteStreamPortable on: String new.
  writer writePackage: 'The-Package' on: stream.
  self
    assert: stream contents
    equals:
      ('Package { #name : #The-Package }
'
).

  stream := WriteStreamPortable on: String new.
  writer writePackage: 'The Package' on: stream.
  self
    assert: stream contents
    equals:
      ('Package { #name : #''The Package'' }
'
).
