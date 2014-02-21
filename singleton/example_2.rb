module ModuleSingleton
  extend self

  def whoami
    object_id
  end
end

puts ModuleSingleton.whoami == ModuleSingleton.whoami
