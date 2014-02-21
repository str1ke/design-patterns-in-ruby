class A

  def self.instance
    @instance ||= new
  end

  def initialize
    puts 'init'
  end

end

puts A.instance.object_id
puts A.instance.object_id
