testArray = ["a", "b", "c", "d", "e", "f"]
arrayLength = testArray.length
Array.new(arrayLength) #=> [nil, nil, nil, nil, nil, nil]
testLetter = "d"

C:\Users\Chauncy>irb
irb(main):001:0> Dir.pwd
=> "C:/Users/Chauncy"
irb(main):002:0> Dir.chdir("./projects/RubyHangman")
=> 0
irb(main):003:0> Dir.pwd
=> "C:/Users/Chauncy/projects/RubyHangman"
irb(main):004:0> load "RubyHangmanTesting02.rb"
WORD: s _ _ _ _ _ _ q _ _ _ _ _ _ _ _ s _ _ _ _ _ _ _ => true
irb(main):005:0> load "RubyHangmanTesting02.rb"
WORD: s _ _ _ s _ _ _ s _ _ _ s _ _ _ s _ _ _ s _ _ _ => true
irb(main):006:0> load "RubyHangmanTesting02.rb"
WORD: _ _ _ q _ _ _ q _ _ _ q _ _ _ q _ _ _ q _ _ _ q => true
irb(main):007:0> load "RubyHangmanTesting02.rb"
WORD: _ e _ _ _ e _ _ _ e _ _ _ e _ _ _ e _ _ _ e _ _ => true
irb(main):008:0> load "RubyHangmanTesting02.rb"
WORD: s _ _ _ _ e _ _ _ _ f _ _ _ _ q s _ _ _ _ e _ _ _ _ f _ _ _ _ q => true
irb(main):009:0> load "RubyHangmanTesting02.rb"
WORD: s _ _ _ s _ _ _ _ e _ _ _ e _ _ _ _ f _ _ _ f _ _ _ _ q _ _ _ q => true
irb(main):010:0> load "RubyHangmanTesting02.rb"
WORD: s s s s s s _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ => true
irb(main):011:0> load "RubyHangmanTesting02.rb"
WORD: s s s s s s _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ => true
irb(main):012:0> load "RubyHangmanTesting02.rb"
WORD: s s s _ _ _ => true
irb(main):013:0> load "RubyHangmanTesting02.rb"
WORD: s _ s _ s _ => true
irb(main):014:0>