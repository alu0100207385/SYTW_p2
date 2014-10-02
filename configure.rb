def my_twitter_client
  Twitter::REST::Client.new do |config|
    config.consumer_key        = '6OWltc1Nwj9kOiw9h7ohpAxo6'
    config.consumer_secret     = 'mkbOUmy7vLPatG7bZnyLiFg66miCHJ3i0BxVG6ajVoiT0MPeQd'
    config.access_token        = '1899665676-v1VGsHeyyIcfW0G6ePfJkeBU1uc1m3YGVmMT7gB'
    config.access_token_secret = '88c7j8XbMcr8HWdzyeBWvESUT5OPeoEtOyL7onRjyyJC4'
  end
end
