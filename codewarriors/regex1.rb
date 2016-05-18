# Replace all instances of "probably" to "prolly"
# Replace all instances of "i am" to "i'm"
# Replace all instances of "instagram" to "insta"
# Replace all instances of "do not" to "don't"
# Replace all instances of "going to" to "gonna"
# Replace all instances of "combination" to "combo"

def gym_slang(phrase)
  #your code here
end

replacements = {
  "/P|probably/" => "prolly",
  "/I|i am/" => "i'm",
  "/I|instagram" => "insta",
  "/D|do not/" => "don't",
  "/G|going to" => "gonna",
  "/C|combination/" => "combo"
}

matching = '/here/'
string = "I probably shouldn't say this, but I do not know the combination"
replacements.map { |key| string.gsub(key, replacements[key]) }
string.gsub(matching, replacing)


