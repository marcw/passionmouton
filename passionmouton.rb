require 'twitter'

Twitter.configure do |config|
    config.consumer_key       = ENV['CONSUMER_KEY']
    config.consumer_secret    = ENV['CONSUMER_SECRET']
    config.oauth_token        = ENV['ACCESS_TOKEN']
    config.oauth_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

r = Random.new

original = "BL"
original += "A" * r.rand(5..27)
original += "R" * r.rand(1..9)
original += "T"

Twitter.update(original)
