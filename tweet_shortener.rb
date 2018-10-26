def dictionary
  substitute_hash = {
  "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    
  }
  
end

#use has.key - see if it's true 
#then use fetch to pop value
#build new array
# add to new array
def word_substituter(tweet)
  new_array = []
  long_words = dictionary.keys
  tweet_words = tweet.split
  tweet_words.each do |word|
    if dictionary.has_key?(word)
      new_array << dictionary.fetch(word)
    else
      new_array << dictionary.fetch(word)
    end
  end
  
end