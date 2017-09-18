class RedisConnector


  def self.connection
    @@redis = Redis.new(url: path)
  end

  def set(key, value)
    handler_exception { @@redis.set(key, value) }
  end

  def get(key)
    handler_exception { @@redis.get(key) }
  end

  def expire(key, ttl)
    handler_exception { @@redis.expire(key, ttl) }
  end

  def self.path
    ENV['REDIS_URL'] || raise('Fail Connect Redis')
  end

  private

  def handler_exception
    yield
  rescue Redis::CommandError
    @fail_number += 1
    raise(StandardError, 'Fail stablish redis conection ') if @fail_number > 3
    Rails.logger.error(fail: 'Fail redis. try recovery')
    handler_exception { retry_police { yield } }
  end

  def retry_police
    self.class.connection
    yield
  end
  #

end
