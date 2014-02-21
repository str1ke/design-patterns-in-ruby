require 'singleton'

class Klass
  include Singleton

  def initialize
    puts 'init'
  end
end

puts Klass.instance == Klass.instance
