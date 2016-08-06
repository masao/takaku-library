if ENV["REDISCLOUD_URL"]
  $redis = Resque.redis = Redis.new(:url => ENV["REDISCLOUD_URL"])
end
if ENV["REDIS_URL"]
  $redis = Resque.redis = Redis.new(:url => ENV["REDIS_URL"])
end

