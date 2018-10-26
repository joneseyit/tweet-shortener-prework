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
    curWord = word.downcase
    if dictionary.has_key?(curWord)
      new_array << dictionary.fetch(curWord)
    else
      new_array << word
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet_shortener(tweet)
end