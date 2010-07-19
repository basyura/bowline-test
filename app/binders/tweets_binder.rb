class TweetsBinder < Bowline::Binders::Collection
  bind Tweet
  class << self
    def initial
      #[{:body => "Hello Tweet"}]
      klass.all
    end
    def sing(param)
      tweet = Tweet.new
      tweet.body = "sing #{param.class}" + param.to_s
      tweet.save
    end
  end
end
