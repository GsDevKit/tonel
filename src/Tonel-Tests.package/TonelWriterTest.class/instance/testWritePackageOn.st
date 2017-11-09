tests
testWritePackageOn
  | writer def stream |
  writer := TonelWriter new.
  stream := TonelParser writeStreamClass on: String new.
  writer writePackage: 'ThePackage' on: stream.
  self
    assert: stream contents
    equals:
      ('Package { #name : #ThePackage }
'
).

  stream := TonelParser writeStreamClass on: String new.
  writer writePackage: 'The-Package' on: stream.
  self
    assert: stream contents
    equals:
      ('Package { #name : #The-Package }
'
).

  stream := TonelParser writeStreamClass on: String new.
  writer writePackage: 'The Package' on: stream.
  self
    assert: stream contents
    equals:
      ('Package { #name : #''The Package'' }
'
).
