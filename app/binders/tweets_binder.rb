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

      if  param.kind_of? String
        callback "success to tweet with string"
      elsif param.kind_of? Array
        callback ["success" , "to" , "tweet" , "with" , "array"]
      elsif param.kind_of? Hash
        ret = {:msg => "success to tweet with hash" , :name => "bowline"}
        callback ret
      end
    end
  end
end
