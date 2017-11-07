asserting
shouldParse: aString rule: rule raise: error
  | parser |
  parser := TonelParser parseString: aString.
  self should: [ parser perform: rule ] raise: error