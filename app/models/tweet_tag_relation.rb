class TweetTagRelation < ApplicationRecord\
  belongs_to: :tag
  belongs_to: :tweet
end
