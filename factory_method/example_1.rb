class Logger
  def self.create(type)
    case type
    when :remote
      RemoteLogger.new
    when :local
      LocalLogger.new
    else
      raise "Unknown logger type #{type}"
    end
  end
end

class RemoteLogger < Logger
  def log(message)
    puts "sending to server: #{message}"
  end
end

class LocalLogger < Logger
  def log(message)
    puts "write to logfile: #{message}"
  end
end

logger = Logger.create(:remote)
logger.log('something happened')

logger = Logger.create(:local)
logger.log('something happened')
