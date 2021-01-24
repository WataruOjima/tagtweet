class TweetsTags

  include ActiveModel ::module
  attr_accessor :message, :name

   with_options presence: true do
    validates :massage 
    validates :name 
   end 

   def save 
    tweet = Tweet.create(message: message)
    tag = Tag.create(name: name)

    TweetTagRelation.create(tweet_id: tweet.id, tag_id: tag.id)
   end 
end 
    