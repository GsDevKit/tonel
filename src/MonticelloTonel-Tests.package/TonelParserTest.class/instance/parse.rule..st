private
parse: aString rule: rule
  | parser |
  parser := TonelParser onString: aString.
  ^ parser perform: rule